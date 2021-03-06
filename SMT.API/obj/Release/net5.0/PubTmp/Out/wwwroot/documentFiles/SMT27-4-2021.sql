USE [master]
GO
/****** Object:  Database [SMTDB]    Script Date: 4/27/2021 11:06:55 AM ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/27/2021 11:06:55 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[AssignedProject]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[Attendance]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[Certificate]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[Compensation]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[Contractors]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[CvBank]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[DocumentsCategories]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[Employee]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[EmployeeDocument]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[EndUsers]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[Evaluation]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[EvaluationProfession]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[EvaluationType]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[Excuse]    Script Date: 4/27/2021 11:07:12 AM ******/
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
/****** Object:  Table [dbo].[Faculty]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[FacultyDepartment]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[Governorates]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[Instructor]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[LeaveFile]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[LeaveRequest]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[LeavesType]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[MissionRequest]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[NeedsCategory]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[NeedsRequest]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[OfferDescriptions]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[OfferDocuments]    Script Date: 4/27/2021 11:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentName] [nvarchar](max) NULL,
	[DocumentFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_OfferDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 4/27/2021 11:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataSheet] [nvarchar](max) NULL,
	[OfferCreationDate] [datetime2](7) NOT NULL,
	[OfferStatusId] [int] NOT NULL,
	[ProjectCostsId] [int] NOT NULL,
	[ProjectsId] [int] NOT NULL,
	[OfferDocumentsId] [int] NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferStatus]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[Position]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[PositionLevel]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[Profession]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[ProjectComponents]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[ProjectCosts]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[ProjectDescriptions]    Script Date: 4/27/2021 11:07:13 AM ******/
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
	[ProjectUpdateId] [int] NOT NULL,
 CONSTRAINT [PK_ProjectDescriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectDocuments]    Script Date: 4/27/2021 11:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentFile] [nvarchar](max) NULL,
	[ProjectId] [int] NOT NULL,
	[DocumentsCategoryId] [int] NOT NULL,
	[ProjectUpdateId] [int] NOT NULL,
 CONSTRAINT [PK_ProjectDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[ProjectStatus]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[projectUpdates]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[SubCategory]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[Training]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[TrainingProfession]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[TrainingType]    Script Date: 4/27/2021 11:07:13 AM ******/
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
/****** Object:  Table [dbo].[University]    Script Date: 4/27/2021 11:07:13 AM ******/
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
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0da69533-efbd-435e-a090-c4e40231d3af', N'CEO', N'CEO', N'f1568902-80a5-4601-8c7a-815e0c3634fd')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4a479ea5-6e11-47a1-9996-d7f126991f49', N'PreSalesManager', N'PRESALESMANAGER', N'e03e1b2b-5a1b-4389-81a4-dda8d8876103')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b3ef0089-66ec-42ed-bba9-90b9b7db0f5e', N'PreSales', N'PRESALES', N'a863297c-24ab-476b-940e-917ef1860783')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cfc07764-ce23-4172-8ab9-1c95deeb16a5', N'Admin', N'ADMIN', N'4612eead-203e-43e3-920d-f2894ef5d2de')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f297db29-cec8-4483-9f9e-981440981cd6', N'Sales', N'SALES', N'29303faa-0dba-45d0-9275-1bee086e869a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fd2e5a6a-e634-4f2f-bea0-6fc57ca867e2', N'SalesManager', N'SALESMANAGER', N'fb6ce615-585a-46f7-a296-dba3d4ba9d0b')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'9cf56d32-cb41-4f3b-976c-02e9ba40a74b')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (6, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (11, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (12, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (13, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (14, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'4b557779-ac11-48e8-b04a-db236173c0cb')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (15, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (16, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (17, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (18, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (19, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (20, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (21, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (22, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (23, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (24, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'e2147dbd-1ed3-44c2-bd37-db47b1fceabe')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (25, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (26, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (27, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (28, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (29, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (30, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (31, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (32, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (33, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (34, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'd41b663d-1699-49ff-801e-3f5b31770fa3')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (35, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (36, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (37, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (38, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (39, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (40, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (41, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (42, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (43, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (44, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'430c5c96-a961-441e-a339-6dbc132a31bc')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (45, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (46, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (47, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (48, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (49, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (50, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (51, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (52, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (53, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (54, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'450fc257-6eb7-48a0-a4a0-7b9ac5379e79')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (55, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (56, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (57, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (58, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (59, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (60, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (61, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (62, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (63, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (64, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'd947e228-8a7d-4541-a085-5a575b2193e6')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (65, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (66, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (67, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (68, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (69, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (70, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (71, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (72, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (73, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (74, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'fe26d6cc-4334-4533-a38b-49621c939e5b')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (75, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (76, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (77, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (78, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (79, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (80, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (81, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (82, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (83, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (84, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'34894800-7cc7-446e-9d9b-abda682445ca')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (85, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (86, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (87, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (88, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (89, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (90, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (91, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (92, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (93, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (94, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'db4a7877-455e-4250-8c4f-c05a97ba9389')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (95, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (96, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (97, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (98, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (99, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (100, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (101, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (102, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (103, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (104, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'cdfd61d6-5f04-4085-bd19-a1cc4be3d78f')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (105, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (106, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (107, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (108, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (109, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (110, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (111, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (112, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (113, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (114, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'f52db98a-fb9b-4bc4-a4e4-4cc8542f62d1')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (115, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (116, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (117, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (118, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (119, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (120, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (121, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (122, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (123, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (124, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'bcbbb5e7-ff78-4218-b341-91af72eb54f3')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (125, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (126, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (127, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (128, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (129, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (130, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (131, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (132, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (133, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (134, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'49ef655a-9cac-41e1-8737-2a18402dbfeb')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (135, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (136, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (137, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (138, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (139, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (140, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (141, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (142, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (143, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (144, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'd4766c72-b123-4968-9e53-7340322bf0aa')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (145, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (146, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (147, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (148, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (149, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (150, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (151, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (152, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (153, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (154, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'0120acba-2b69-4eb7-922e-985a71b976e0')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (155, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (156, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (157, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (158, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (159, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (160, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (161, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (162, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (163, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (164, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'b88adad0-c021-420c-a55c-58fb43a5259c')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (165, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (166, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (167, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (168, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (169, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (170, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (171, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (172, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (173, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (174, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'fb944128-c4ea-40aa-80bd-8bdeea801280')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (175, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (176, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (177, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (178, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (179, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (180, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (181, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (182, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (183, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (184, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'2ac508b8-be2a-4509-91ad-b23eccc9f770')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (185, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (186, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (187, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (188, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (189, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (190, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (191, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (192, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (193, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (194, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'f5cd4fe5-f0d3-4757-8abb-55cd401aff04')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (195, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (196, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (197, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (198, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (199, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (200, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (201, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (202, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (203, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (204, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'844eb5a8-1ea1-4027-a903-5430456438e0')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (205, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (206, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (207, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (208, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (209, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (210, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (211, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (212, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (213, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (214, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'90c7272f-c94d-4c45-a7cd-0881b42f74d0')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (215, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (216, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (217, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (218, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (219, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (220, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (221, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (222, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (223, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (224, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'06b57858-cf93-4670-909d-0aa814b3c88a')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (225, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (226, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (227, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (228, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (229, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (230, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (231, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (232, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (233, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (234, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'9c32a1fa-e4dc-43fe-bbb5-cf7942344596')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (235, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (236, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (237, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (238, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (239, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (240, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (241, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (242, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (243, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (244, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'b318e4bd-f3a5-4e08-9649-a312bc0c744c')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (245, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (246, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (247, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (248, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (249, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (250, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (251, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (252, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (253, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (254, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'0dc38283-e826-46dd-99fb-5e833934f485')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (255, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (256, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (257, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (258, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (259, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (260, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (261, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (262, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (263, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (264, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'de1990c3-5fb8-4a58-931a-3477c44998e1')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (265, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (266, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (267, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (268, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (269, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (270, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1002, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1003, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1004, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1005, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'76f2f66d-12da-4995-a298-b31bcc8e75bc')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1006, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1007, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1008, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1009, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1010, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1011, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1012, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1013, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1014, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1015, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'2ad2198c-09bb-4182-a932-2aef78eb2b7e')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1016, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1017, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1018, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1019, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1020, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1021, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1022, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1023, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1024, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1025, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'92152a52-7c0f-4ad6-989b-c3e381dc2be1')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1026, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1027, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1028, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1029, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1030, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1031, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1032, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1033, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1034, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1035, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'eb917297-87b8-45e5-bbc4-5e6d94cc870a')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1036, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1037, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1038, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1039, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1040, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1041, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1042, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1043, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1044, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1045, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'0eaf505b-7606-4964-94c5-7e3501242575')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1046, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1047, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1048, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1049, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1050, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1051, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1052, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1053, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1054, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1055, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'b74db390-79c6-44d4-85ef-5d2e6fc6ef71')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1056, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1057, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1058, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1059, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1060, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1061, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1062, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1063, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1064, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1065, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'f02046bf-66dd-461d-bcab-4481318c7786')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1066, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1067, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1068, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1069, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1070, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1071, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1072, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1073, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1074, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1075, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'ffcac1d9-5626-4f02-85d4-27b03b4df6f8')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1076, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1077, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1078, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1079, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1080, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1081, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1082, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1083, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1084, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1085, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'67d3585c-da42-4c60-8856-d8dcd9675984')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1086, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1087, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1088, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1089, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1090, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1091, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1092, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1093, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1094, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1095, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'a730f334-0b68-4458-a7a6-2dae5a486faa')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1096, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1097, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1098, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1099, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1100, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1101, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1102, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1103, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1104, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1105, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'3098d70f-364c-4d42-ad99-617a4160a11a')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1106, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1107, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1108, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1109, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1110, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1111, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1112, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1113, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1114, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1115, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'b79d5233-ba6a-4654-9445-0498d5e34daa')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1116, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1117, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1118, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1119, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1120, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1121, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1122, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1123, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1124, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1125, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'e8cb3126-2076-4b8a-981e-1618c88865e5')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1126, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1127, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1128, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1129, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1130, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1131, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2002, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2003, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2004, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2005, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'jti', N'd0cc1175-ac25-4863-921f-5b19f965e0d3')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2006, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'CEO')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2007, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2008, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2009, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2010, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Sales')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2011, N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'0da69533-efbd-435e-a090-c4e40231d3af')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'4a479ea5-6e11-47a1-9996-d7f126991f49')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'b3ef0089-66ec-42ed-bba9-90b9b7db0f5e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'cfc07764-ce23-4172-8ab9-1c95deeb16a5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'f297db29-cec8-4483-9f9e-981440981cd6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'fd2e5a6a-e634-4f2f-bea0-6fc57ca867e2')
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'acba37c5-2f70-47e7-b4b1-fe926ed0ade2', N'ApplicationUser', N'Roshdy', N'ROSHDY', N'Roshdy@gmail.com', N'ROSHDY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAvaSEGX6FJSW2btlMVvLt3WJY68KpLxlTl821DYjCPgtcQZ4Y5ccFnEDw5CwXunKw==', N'K5GROROJICOVZLMUUPSSARTEDLBITEDL', N'95d49c35-04ae-4386-91ae-906cf6c29d68', NULL, 0, 0, NULL, 1, 0)
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
SET IDENTITY_INSERT [dbo].[ProjectComponents] ON 

INSERT [dbo].[ProjectComponents] ([Id], [ProjectComponentName]) VALUES (1, N'CCTV')
INSERT [dbo].[ProjectComponents] ([Id], [ProjectComponentName]) VALUES (6, N'Active Data')
INSERT [dbo].[ProjectComponents] ([Id], [ProjectComponentName]) VALUES (7, N'Passive Data')
SET IDENTITY_INSERT [dbo].[ProjectComponents] OFF
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
SET IDENTITY_INSERT [dbo].[projectUpdates] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignedProject_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AssignedProject_EmployeeId] ON [dbo].[AssignedProject]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignedProject_ProjectId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AssignedProject_ProjectId] ON [dbo].[AssignedProject]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Attendance_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Attendance_EmployeeId] ON [dbo].[Attendance]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Certificate_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Certificate_EmployeeId] ON [dbo].[Certificate]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Compensation_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Compensation_EmployeeId] ON [dbo].[Compensation]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Course_TrainingTypeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Course_TrainingTypeId] ON [dbo].[Course]
(
	[TrainingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CvBank_ProfessionId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_CvBank_ProfessionId] ON [dbo].[CvBank]
(
	[ProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_FacultyDepartmentId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_FacultyDepartmentId] ON [dbo].[Employee]
(
	[FacultyDepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_PositionId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_PositionId] ON [dbo].[Employee]
(
	[PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_PositionlevelId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_PositionlevelId] ON [dbo].[Employee]
(
	[PositionlevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_ProfessionId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_ProfessionId] ON [dbo].[Employee]
(
	[ProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeDocument_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeDocument_EmployeeId] ON [dbo].[EmployeeDocument]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Evaluation_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Evaluation_EmployeeId] ON [dbo].[Evaluation]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Evaluation_EvaluationProfessionId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Evaluation_EvaluationProfessionId] ON [dbo].[Evaluation]
(
	[EvaluationProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EvaluationProfession_EvaluationTypeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_EvaluationProfession_EvaluationTypeId] ON [dbo].[EvaluationProfession]
(
	[EvaluationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EvaluationProfession_ProfessionId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_EvaluationProfession_ProfessionId] ON [dbo].[EvaluationProfession]
(
	[ProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Excuse_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Excuse_EmployeeId] ON [dbo].[Excuse]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Faculty_UniversityId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Faculty_UniversityId] ON [dbo].[Faculty]
(
	[UniversityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FacultyDepartment_FacultyId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_FacultyDepartment_FacultyId] ON [dbo].[FacultyDepartment]
(
	[FacultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveFile_LeaveRequestId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveFile_LeaveRequestId] ON [dbo].[LeaveFile]
(
	[LeaveRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveRequest_AlternativeEmpId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveRequest_AlternativeEmpId] ON [dbo].[LeaveRequest]
(
	[AlternativeEmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveRequest_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveRequest_EmployeeId] ON [dbo].[LeaveRequest]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveRequest_LeaveTypeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveRequest_LeaveTypeId] ON [dbo].[LeaveRequest]
(
	[LeaveTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MissionRequest_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_MissionRequest_EmployeeId] ON [dbo].[MissionRequest]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NeedsRequest_CategoryId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_NeedsRequest_CategoryId] ON [dbo].[NeedsRequest]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NeedsRequest_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_NeedsRequest_EmployeeId] ON [dbo].[NeedsRequest]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NeedsRequest_SubCategoryId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_NeedsRequest_SubCategoryId] ON [dbo].[NeedsRequest]
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferDescriptions_OffersId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDescriptions_OffersId] ON [dbo].[OfferDescriptions]
(
	[OffersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OfferDescriptions_UserId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDescriptions_UserId] ON [dbo].[OfferDescriptions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_OfferDocumentsId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_OfferDocumentsId] ON [dbo].[Offers]
(
	[OfferDocumentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_OfferStatusId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_OfferStatusId] ON [dbo].[Offers]
(
	[OfferStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_ProjectCostsId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_ProjectCostsId] ON [dbo].[Offers]
(
	[ProjectCostsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_ProjectsId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_ProjectsId] ON [dbo].[Offers]
(
	[ProjectsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Profession_ManagerId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Profession_ManagerId] ON [dbo].[Profession]
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDescriptions_ProjectId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDescriptions_ProjectId] ON [dbo].[ProjectDescriptions]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDescriptions_ProjectUpdateId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDescriptions_ProjectUpdateId] ON [dbo].[ProjectDescriptions]
(
	[ProjectUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProjectDescriptions_UserId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDescriptions_UserId] ON [dbo].[ProjectDescriptions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDocuments_DocumentsCategoryId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDocuments_DocumentsCategoryId] ON [dbo].[ProjectDocuments]
(
	[DocumentsCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDocuments_ProjectId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDocuments_ProjectId] ON [dbo].[ProjectDocuments]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDocuments_ProjectUpdateId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDocuments_ProjectUpdateId] ON [dbo].[ProjectDocuments]
(
	[ProjectUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_ContractorsId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_ContractorsId] ON [dbo].[Projects]
(
	[ContractorsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_EndUsersId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_EndUsersId] ON [dbo].[Projects]
(
	[EndUsersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_GovernoratesId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_GovernoratesId] ON [dbo].[Projects]
(
	[GovernoratesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_ProjectComponentsId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_ProjectComponentsId] ON [dbo].[Projects]
(
	[ProjectComponentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_ProjectStatusId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_ProjectStatusId] ON [dbo].[Projects]
(
	[ProjectStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_projectUpdates_ProjectId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_projectUpdates_ProjectId] ON [dbo].[projectUpdates]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubCategory_CategoryId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_SubCategory_CategoryId] ON [dbo].[SubCategory]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Training_EmployeeId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Training_EmployeeId] ON [dbo].[Training]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Training_InstructorId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Training_InstructorId] ON [dbo].[Training]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Training_TrainingProfessionId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Training_TrainingProfessionId] ON [dbo].[Training]
(
	[TrainingProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingProfession_CourseId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingProfession_CourseId] ON [dbo].[TrainingProfession]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingProfession_ProfessionId]    Script Date: 4/27/2021 11:07:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingProfession_ProfessionId] ON [dbo].[TrainingProfession]
(
	[ProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AssignedProject] ADD  DEFAULT ((0)) FOR [EmployeeId]
GO
ALTER TABLE [dbo].[ProjectDescriptions] ADD  DEFAULT ((0)) FOR [ProjectUpdateId]
GO
ALTER TABLE [dbo].[ProjectDocuments] ADD  DEFAULT ((0)) FOR [ProjectUpdateId]
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
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_OfferDocuments_OfferDocumentsId] FOREIGN KEY([OfferDocumentsId])
REFERENCES [dbo].[OfferDocuments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_OfferDocuments_OfferDocumentsId]
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
