USE [pharmacyDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/9/2020 2:35:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/9/2020 2:35:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/9/2020 2:35:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/9/2020 2:35:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/9/2020 2:35:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/9/2020 2:35:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[pharmacyLoggedInID] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/9/2020 2:35:52 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NameAR] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DescriptionAR] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drug]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drug](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TradeName] [nvarchar](max) NULL,
	[GenericName] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[TheraSubGroupID] [int] NOT NULL,
	[formID] [int] NOT NULL,
	[firmID] [int] NOT NULL,
	[unitID] [int] NOT NULL,
	[rOADID] [int] NOT NULL,
	[countryID] [int] NOT NULL,
	[TheraGroupID] [int] NULL,
 CONSTRAINT [PK_Drug] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DrugDetails]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrugDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Strength] [nvarchar](max) NULL,
	[Pack] [nvarchar](max) NULL,
	[Price] [nvarchar](max) NULL,
	[License] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL,
	[ReOrderLevel] [nvarchar](max) NULL,
	[BarCode] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Quentity] [int] NOT NULL,
	[Prod_Date] [datetime2](7) NOT NULL,
	[Exp_Date] [datetime2](7) NOT NULL,
	[IsChecked] [bit] NOT NULL,
	[Code] [nvarchar](max) NULL,
	[drugID] [int] NOT NULL,
	[pharmacyLoggedInID] [int] NOT NULL,
 CONSTRAINT [PK_DrugDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DrugInteraction]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrugInteraction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SideEffects] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[DrugId] [int] NOT NULL,
	[DrugInteractedID] [int] NOT NULL,
 CONSTRAINT [PK_DrugInteraction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Telephone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[pharmacyName] [nvarchar](max) NULL,
	[pharmacyID] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Firm]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Code] [nvarchar](max) NULL,
 CONSTRAINT [PK_Firm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Form]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PHFORM] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Code] [nvarchar](max) NULL,
 CONSTRAINT [PK_Form] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Number] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[PendingStatus] [bit] NOT NULL,
	[supplierID] [int] NULL,
	[pharmacySourceID] [int] NOT NULL,
	[pharmacyLoggedInID] [int] NOT NULL,
	[pharmacyTargetID] [int] NOT NULL,
	[pledgeId] [int] NULL,
	[PharmacyID] [int] NULL,
	[patientId] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[drugID] [int] NOT NULL,
	[OrderId] [int] NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Prod_Date] [datetime2](7) NOT NULL,
	[Exp_Date] [datetime2](7) NOT NULL,
	[QuentityInEachOrder] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Telephone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmacy]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[telephone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[location] [nvarchar](max) NULL,
	[PharmacyType] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pharmacy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pledge]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pledge](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[telephone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[location] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pledge] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasedItem]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchasedItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[ExpireDate] [datetime2](7) NOT NULL,
	[ProductionDate] [datetime2](7) NOT NULL,
	[DrugId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_PurchasedItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROAD]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROAD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ROAD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NameAR] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DescriptionAR] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[categoryID] [int] NOT NULL,
	[theraSubID] [int] NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Telephone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Rate] [int] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheraGroup]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheraGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TheraGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheraSubGroup]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheraSubGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[TheraGroupID] [int] NOT NULL,
 CONSTRAINT [PK_TheraSubGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 12/9/2020 2:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201019134306_t', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027125231_re', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027153408_rey', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027154428_reyr', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201102144310_nr', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201102151650_bvcx', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201105161711_ii', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201105161751_iid', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108110246_mn', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108110411_bvc', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108135934_as', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108142747_asdsa', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108142848_hgfd', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108153441_hgfdkkkkkkkkkkk', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108154413_nbhqaaqqqqq', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108154726_nbhqaaqqqqqaaaaaaaa', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108164154_nbhqaaqqqqqaaaaaaaass', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201108170116_bvttt', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109115426_asdfghj', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109115541_asdfghjewi', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109115844_asdfghjewire', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109133659_nbv', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109134303_nbvww', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111122622_mnn', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111125853_bvc', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201112113145_mhgerd', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201112113733_mhgerdqqq', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201115103342_ewq', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201125173052_db', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201126162703_bxcz', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201129153631_tq', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201129155412_aaaaa', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201130092904_vpoo', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201203134535_aswqwqwqwqwww', N'3.1.9')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0fe13e1f-139f-44ef-93b7-acaea21e023c', N'DataEntry', N'DATAENTRY', N'b9d4f978-0c2e-487f-844e-86e970ba16bf')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'39f154cc-9687-4157-800c-a291171c5956', N'Clerk', N'CLERK', N'fdd48e8b-7573-43ba-a0ea-c5bbc49ff80b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'838cbdf3-2a4b-4d6b-a588-db2a6a3e57d1', N'SuperAdmin', N'SUPERADMIN', N'5e442c37-d883-45d5-83da-253aa8b58bed')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a', N'Admin', N'ADMIN', N'0fdc0b92-a909-4628-a6c3-e9cf8c64a847')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ae229286-4368-41c6-9377-7606e87ad378', N'User', N'USER', N'c4fe17ae-8dd6-475b-8274-bd6c45d1e524')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'944b6cf3-f2d3-4163-b2af-ebb711a8553b', N'0fe13e1f-139f-44ef-93b7-acaea21e023c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9d0f349c-ac74-4a41-8928-711a6cf9a38e', N'0fe13e1f-139f-44ef-93b7-acaea21e023c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e30b67bb-4687-440f-9ce7-78ed98c0fdf1', N'0fe13e1f-139f-44ef-93b7-acaea21e023c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0d9edd36-e01d-47b6-90db-b4aaacd32e4e', N'838cbdf3-2a4b-4d6b-a588-db2a6a3e57d1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f4033da-f9ac-4126-8964-6465f1412a17', N'838cbdf3-2a4b-4d6b-a588-db2a6a3e57d1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'890355ed-a0c7-4535-9cf6-480a634e1ade', N'838cbdf3-2a4b-4d6b-a588-db2a6a3e57d1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'125a78d3-fa54-49e7-a484-4e6dd7200384', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'67a32466-88ef-4857-bc5e-b70db0635b8f', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'72e5c2fe-00d9-4dc5-95d3-ee6325665893', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9848af3c-ea64-45ec-a994-0bc482c500ba', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a48da6ec-6bca-459b-8f16-e9abc44e452c', N'85c73512-8fee-4e7a-ad3e-e2d0b73dca3a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acf1ca9f-6b61-408d-a04c-73c033403b18', N'ae229286-4368-41c6-9377-7606e87ad378')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'0d9edd36-e01d-47b6-90db-b4aaacd32e4e', N'IhabSuperAdmin', N'IHABSUPERADMIN', N'IhabSuperAdmin@a.com', N'IHABSUPERADMIN@A.COM', 0, N'AQAAAAEAACcQAAAAEDP+2nNqpBg3bHo1bxcQylMXb5Lz/I2j92167JgUjJlsLs/f5oCHOO7ncCpIZOGgoQ==', N'KZD3SIQ2TSPVWKK3VKKMKXXRINRTEI7I', N'304a91c6-e821-4eba-9e30-4b71cb7e56c4', NULL, 0, 0, NULL, 1, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'125a78d3-fa54-49e7-a484-4e6dd7200384', N'shahynaz1', N'SHAHYNAZ1', N'shahynaz1@a.com', N'SHAHYNAZ1@A.COM', 0, N'AQAAAAEAACcQAAAAEOPGieeBYgIOfVho0ioTruvRVbO81SQbdm9Mgas5ictStffsT5BIytxz1g0sAGuE8w==', N'CV34TCBBFEQHZQM6CALI3B7P6S45VQVN', N'5da8e614-1bf0-4327-93c1-674ebfdf4273', NULL, 0, 0, NULL, 1, 0, 5)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'3f4033da-f9ac-4126-8964-6465f1412a17', N'shahynazPharmacySuperAdmin12', N'SHAHYNAZPHARMACYSUPERADMIN12', N'shahynazPharmacySuperAdmin21@a.com', N'SHAHYNAZPHARMACYSUPERADMIN21@A.COM', 0, N'AQAAAAEAACcQAAAAEOgWAZl6U8vxvhF6L4mrExk5MwCtzU8w2D1w3Iq3aZQNuxCRZc8E3SYRLGSiYrmD7g==', N'JH2JJ3Q7PCAX35XUQQCPVNBMS5F2TOE2', N'1e81b8cc-f79b-4482-996e-247f63f7682c', NULL, 0, 0, NULL, 1, 0, 6)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'67a32466-88ef-4857-bc5e-b70db0635b8f', N'shahynazPharmacy7', N'SHAHYNAZPHARMACY7', N'shahynazPharmacy7@ahmed.com', N'SHAHYNAZPHARMACY7@AHMED.COM', 0, N'AQAAAAEAACcQAAAAEC/w8eqCY+ecgVfTZAuK89liuM14Wile0pAZaLtaZ6Y32oKO7JNf6+LQfWf+z2wc2g==', N'ZFQY6WRLGZJPTKIFEOOTH3SN4KP47XGX', N'a40f57d3-10c4-432c-aff1-5a1212fd219f', NULL, 0, 0, NULL, 1, 0, 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'72e5c2fe-00d9-4dc5-95d3-ee6325665893', N'shahynazPharmacy2', N'SHAHYNAZPHARMACY2', N'shahynazPharmacy2@ahmed.com', N'SHAHYNAZPHARMACY2@AHMED.COM', 0, N'AQAAAAEAACcQAAAAEE9FTXbMpWTuEw/Zq2B5qDGT+cN8pihXfi5XpG+OF8EPPAUGJCJV7HA7iUGuC7lHig==', N'S2V7LPTZAQTQCGLSN7F5U7RW7LIHUWE7', N'5c77c1fa-2028-459e-8e9a-b9aad8ac1e2c', NULL, 0, 0, NULL, 1, 0, 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'890355ed-a0c7-4535-9cf6-480a634e1ade', N'shahynazPharmacySuperAdmin', N'SHAHYNAZPHARMACYSUPERADMIN', N'shahynazPharmacySuperAdmin@a.com', N'SHAHYNAZPHARMACYSUPERADMIN@A.COM', 0, N'AQAAAAEAACcQAAAAEDTnG7e+veUKG5rVPElTvQOkowk2JwwSGOo7re1YCz4UUHiTKklVCBDWQHGBgHzw2g==', N'NCZZJJWRYYD65IOIIDHQKTPPTA4PP6F2', N'f7f55552-2fb7-41db-abda-88ee60ccf291', NULL, 0, 0, NULL, 1, 0, 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'944b6cf3-f2d3-4163-b2af-ebb711a8553b', N'ekram', N'EKRAM', N'jh.com', N'JH.COM', 0, N'AQAAAAEAACcQAAAAEAJgc8J/FtjDVUwCDpD2ru57wHAU9EUFRtKKC3c/xwdNUe6CC3HS6gOLR54EivRlIQ==', N'PKHB2ASCVJQKBN73QGPVVNAWXBFPS6X2', N'cac82add-9de6-453a-afb1-fe4eb94beda4', NULL, 0, 0, NULL, 1, 0, 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'9848af3c-ea64-45ec-a994-0bc482c500ba', N'shahynazPharmacy13', N'SHAHYNAZPHARMACY13', N'shahynazPharmacy13@a.com', N'SHAHYNAZPHARMACY13@A.COM', 0, N'AQAAAAEAACcQAAAAEMoMe08OZa5EMFUbai3KBMLdehWtoW6tvgfCeUOqyf9dIN/Lv27dvJT/1k+Lh5SmXw==', N'6BWWDWWLLOBOMRI6KON4G3THLVOSLJCA', N'55851198-20e7-4bef-a899-7c695b4f25a8', NULL, 0, 0, NULL, 1, 0, 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'9d0f349c-ac74-4a41-8928-711a6cf9a38e', N'tasnem', N'TASNEM', N'tas', N'TAS', 0, N'AQAAAAEAACcQAAAAEDqu26CB/bbVOwm7SRpzG5L9TUkKYJ/z3lOrgQ4UthkdRIMAcenBdN8ca6z6FDn27g==', N'NXENWVD53NDIN3UBOKV7C5QYG2XUI6IJ', N'822180ef-9c43-4f19-abb1-3b829ae34b4e', NULL, 0, 0, NULL, 1, 0, 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'a48da6ec-6bca-459b-8f16-e9abc44e452c', N'shahynaz12', N'SHAHYNAZ12', N'ahmed@ahmed.com', N'AHMED@AHMED.COM', 0, N'AQAAAAEAACcQAAAAEDeLyKGhuhWqB7C+SPPtday/ETwfsr4AF0L0FczudMDCeLs7FrGZvqV52qGdKsBeJg==', N'NF5JZTD66FE55K3GRUSBCUMPV5S2MKG4', N'a03923b3-7a65-404d-ad74-cc4b87318e34', NULL, 0, 0, NULL, 1, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'acf1ca9f-6b61-408d-a04c-73c033403b18', N'shahynazPharmacy3', N'SHAHYNAZPHARMACY3', N'shahynazPharmacy3@ahmed.com', N'SHAHYNAZPHARMACY3@AHMED.COM', 0, N'AQAAAAEAACcQAAAAELJpd00OL8tPGwutYSzODsqXIw9hUncA3pSpGou12las2VO75USaXf/SIKt8p+JOIw==', N'INGGGBMVHG33NK6RHTX7ISBXUOAXHHSP', N'55c0c6d5-125b-41f3-841f-7f50d62891a6', NULL, 0, 0, NULL, 1, 0, 5)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [pharmacyLoggedInID]) VALUES (N'e30b67bb-4687-440f-9ce7-78ed98c0fdf1', N'shahynazPharmacy6', N'SHAHYNAZPHARMACY6', N'shahynazPharmacy6@ahmed.com', N'SHAHYNAZPHARMACY6@AHMED.COM', 0, N'AQAAAAEAACcQAAAAEE3KFriBZCR/RL35o9vDyv69Tc0YPY5uO7PGdvuqG2vRHWXa9Pih0AoXoyO7xGvORg==', N'TT3UPOUTIODK4HR5AZ6Y6EI4YRYWRN37', N'2c012c1c-39ce-49e7-9520-6de3415964cc', NULL, 0, 0, NULL, 1, 0, 5)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [NameAR], [Description], [DescriptionAR], [IsActive]) VALUES (1, N'cat1', N'categg', N'ytre', N'yui', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([ID], [Name], [Code], [IsActive]) VALUES (1, N'egypt', N'jhg', 1)
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Drug] ON 

INSERT [dbo].[Drug] ([ID], [TradeName], [GenericName], [Img], [TheraSubGroupID], [formID], [firmID], [unitID], [rOADID], [countryID], [TheraGroupID]) VALUES (17, N'Panadol', N'pandCaps', N'E0H7MXB9RK5UN3CATSRZL14BQDA3M1A869HKYRPJ.jfif', 1, 1, 1, 1, 1, 1, NULL)
INSERT [dbo].[Drug] ([ID], [TradeName], [GenericName], [Img], [TheraSubGroupID], [formID], [firmID], [unitID], [rOADID], [countryID], [TheraGroupID]) VALUES (20, N'Congestal', N'con', N'13VIIAHIO97NH19K0CJ5SIC5QNHIVFOYBTJ97YYB.jfif', 1, 1, 1, 1, 1, 1, NULL)
INSERT [dbo].[Drug] ([ID], [TradeName], [GenericName], [Img], [TheraSubGroupID], [formID], [firmID], [unitID], [rOADID], [countryID], [TheraGroupID]) VALUES (22, N'Ansolin', N'an', N'T33JJIYPV9MWRYAPJZ947HGYI9T2HEZR15CM0A2C.jpg', 1, 1, 1, 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Drug] OFF
SET IDENTITY_INSERT [dbo].[DrugDetails] ON 

INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (74, N'22', N'', N'22', N'q', N'22', N'', N'wds', 1, 202, CAST(N'2020-11-05T11:03:40.4200000' AS DateTime2), CAST(N'2020-11-05T11:03:40.4200000' AS DateTime2), 1, N'', 17, 2)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (79, N'33', N'', N'23', N'WW', N'33', N'', N'WE2', 1, 35, CAST(N'2020-11-15T15:20:24.8050000' AS DateTime2), CAST(N'2020-11-15T15:20:24.8050000' AS DateTime2), 1, N'', 20, 3)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (98, N'5', N'', N'55', N'5', N'5', N'', N'55', 1, 40, CAST(N'2020-11-25T17:32:37.2750000' AS DateTime2), CAST(N'2020-11-25T17:32:37.2750000' AS DateTime2), 1, N'', 17, 6)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (99, N'33', N'', N'23', N'WW', N'33', N'', N'WE2', 1, 35, CAST(N'2020-11-15T15:20:24.8050000' AS DateTime2), CAST(N'2020-11-15T15:20:24.8050000' AS DateTime2), 1, N'', 20, 3)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (104, N'22', N'', N'50', N'ww', N'20', N'', N'ee', 1, 0, CAST(N'2020-11-30T17:05:51.7660000' AS DateTime2), CAST(N'2020-11-30T17:05:51.7660000' AS DateTime2), 1, N'', 17, 5)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (105, N'22', N'', N'50', N'ww', N'20', N'', N'ww', 1, 20, CAST(N'2020-11-30T17:05:51.7660000' AS DateTime2), CAST(N'2020-11-30T17:05:51.7660000' AS DateTime2), 1, N'', 20, 5)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (109, N'2', N'', N'23', N'w', N'10', N'', N'2', 1, 500, CAST(N'2020-12-01T14:15:17.9170000' AS DateTime2), CAST(N'2020-12-01T14:15:17.9170000' AS DateTime2), 1, N'', 20, 1)
INSERT [dbo].[DrugDetails] ([ID], [Strength], [Pack], [Price], [License], [Size], [ReOrderLevel], [BarCode], [IsActive], [Quentity], [Prod_Date], [Exp_Date], [IsChecked], [Code], [drugID], [pharmacyLoggedInID]) VALUES (112, N'ee', N'', N'10', N'14', N'e', N'', N'50', 1, 0, CAST(N'2020-12-02T14:27:16.1850000' AS DateTime2), CAST(N'2020-12-02T14:27:16.1850000' AS DateTime2), 1, N'', 20, 2)
SET IDENTITY_INSERT [dbo].[DrugDetails] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Name], [Telephone], [Address], [Email], [pharmacyName], [pharmacyID]) VALUES (1010, N'SHAHY', N'012222222', N'hhgggg', N'mail.com', NULL, 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Firm] ON 

INSERT [dbo].[Firm] ([ID], [Name], [IsActive], [Code]) VALUES (1, N'firm1', 1, N'ytr')
SET IDENTITY_INSERT [dbo].[Firm] OFF
SET IDENTITY_INSERT [dbo].[Form] ON 

INSERT [dbo].[Form] ([ID], [Name], [PHFORM], [IsActive], [Code]) VALUES (1, N'form1', N'ppp', 1, N'yy')
SET IDENTITY_INSERT [dbo].[Form] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1080, CAST(N'2020-11-30T17:29:35.0250000' AS DateTime2), 0, N'', N'', 0, NULL, 5, 5, 5, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1081, CAST(N'2020-11-30T17:29:35.0250000' AS DateTime2), 0, N'', N'', 0, NULL, 5, 5, 5, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1082, CAST(N'2020-11-30T17:54:25.8420000' AS DateTime2), 0, N'', N'', 0, NULL, 2, 2, 5, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1083, CAST(N'2020-11-30T17:57:57.9280000' AS DateTime2), 0, N'', N'', 0, NULL, 5, 5, 5, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1084, CAST(N'2020-11-30T18:01:02.3700000' AS DateTime2), 0, N'', N'', 1, NULL, 2, 2, 5, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1085, CAST(N'2020-11-30T18:05:48.2120000' AS DateTime2), 0, N'', N'', 1, NULL, 5, 5, 5, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1086, CAST(N'2020-11-30T18:05:48.2120000' AS DateTime2), 0, N'', N'', 0, NULL, 5, 5, 2, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1087, CAST(N'2020-12-02T14:29:00.8820000' AS DateTime2), 0, N'', N'', 0, NULL, 5, 5, 2, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1088, CAST(N'2020-12-02T14:36:20.2880000' AS DateTime2), 0, N'', N'', 1, NULL, 2, 2, 5, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1089, CAST(N'2020-12-02T14:36:20.2880000' AS DateTime2), 0, N'', N'', 0, NULL, 2, 2, 5, NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Date], [Number], [Description], [Comments], [PendingStatus], [supplierID], [pharmacySourceID], [pharmacyLoggedInID], [pharmacyTargetID], [pledgeId], [PharmacyID], [patientId], [IsDeleted]) VALUES (1090, CAST(N'2020-12-03T14:47:26.4850000' AS DateTime2), 0, N'', N'', 1, NULL, 5, 5, 2, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1095, 17, 1081, CAST(2.00 AS Decimal(18, 2)), CAST(N'2020-11-30T17:30:32.4030000' AS DateTime2), CAST(N'2020-11-30T17:30:32.4030000' AS DateTime2), 10)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1096, 17, 1082, CAST(2.00 AS Decimal(18, 2)), CAST(N'2020-11-30T17:54:25.8420000' AS DateTime2), CAST(N'2020-11-30T17:54:25.8420000' AS DateTime2), 2)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1098, 20, 1084, CAST(100.00 AS Decimal(18, 2)), CAST(N'2020-11-30T18:01:02.3700000' AS DateTime2), CAST(N'2020-11-30T18:01:02.3700000' AS DateTime2), 100)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1099, 20, 1085, CAST(2.00 AS Decimal(18, 2)), CAST(N'2020-11-30T18:05:48.2120000' AS DateTime2), CAST(N'2020-11-30T18:05:48.2120000' AS DateTime2), 20)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1100, 20, 1086, CAST(2.00 AS Decimal(18, 2)), CAST(N'2020-11-30T18:05:48.2120000' AS DateTime2), CAST(N'2020-11-30T18:05:48.2120000' AS DateTime2), 20)
INSERT [dbo].[OrderDetails] ([ID], [drugID], [OrderId], [Price], [Prod_Date], [Exp_Date], [QuentityInEachOrder]) VALUES (1101, 17, 1087, CAST(10.00 AS Decimal(18, 2)), CAST(N'2020-12-02T14:29:00.8820000' AS DateTime2), CAST(N'2020-12-02T14:29:00.8820000' AS DateTime2), 50)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Patients] ON 

INSERT [dbo].[Patients] ([ID], [Name], [Telephone], [Address]) VALUES (1, N'Sobhy', N'01455555', N'trea')
INSERT [dbo].[Patients] ([ID], [Name], [Telephone], [Address]) VALUES (2, N'Momen', N'01588888', N'cairo')
INSERT [dbo].[Patients] ([ID], [Name], [Telephone], [Address]) VALUES (3, N'Mostafa', N'01255555', N'ismailia')
SET IDENTITY_INSERT [dbo].[Patients] OFF
SET IDENTITY_INSERT [dbo].[Pharmacy] ON 

INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location], [PharmacyType]) VALUES (1, N'Elnagah', N'nnn', N'12332', N'mail@.com', 1, N'kjhg', N'MainPharmacy')
INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location], [PharmacyType]) VALUES (2, N'Tawfek', N'taw@t.com', N'125555', N'mm@m.com', 1, N'loc', N'SubPharmacy')
INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location], [PharmacyType]) VALUES (3, N'Elezaby', N'elz@z.com', N'255555', N'ez@z.com', 1, N'loc', N'SubPharmacy')
INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location], [PharmacyType]) VALUES (5, N'19011', N's@s.com', N'145555', N'yt@x.com', 1, N'uyh', N'SubPharmacy')
INSERT [dbo].[Pharmacy] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location], [PharmacyType]) VALUES (6, N'Ro4eta', N'f@d.com', N'145555', N'yt@x.com', 1, N'uyh', N'SubPharmacy')
SET IDENTITY_INSERT [dbo].[Pharmacy] OFF
SET IDENTITY_INSERT [dbo].[Pledge] ON 

INSERT [dbo].[Pledge] ([ID], [Name], [Address], [telephone], [Email], [IsActive], [location]) VALUES (1, N'p1', N'pp', N'01222222', N'mailll', 1, N'lkio')
SET IDENTITY_INSERT [dbo].[Pledge] OFF
SET IDENTITY_INSERT [dbo].[ROAD] ON 

INSERT [dbo].[ROAD] ([ID], [Name], [Code], [Description], [IsActive]) VALUES (1, N'roooad1', N'rtyyy', N'ytttt', 1)
SET IDENTITY_INSERT [dbo].[ROAD] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([ID], [Name], [ContactPerson], [City], [Address], [Telephone], [Email], [Rate]) VALUES (1, N'Tokyo', N'2220200', N'cairo', N'ytr', N'01111111', N'mail@m.com', 10)
INSERT [dbo].[Supplier] ([ID], [Name], [ContactPerson], [City], [Address], [Telephone], [Email], [Rate]) VALUES (2, N'Segma', N'4566666', N'alex', N'sd', N'05555555', N'mm', 10)
INSERT [dbo].[Supplier] ([ID], [Name], [ContactPerson], [City], [Address], [Telephone], [Email], [Rate]) VALUES (3, N'Shamp', N'1455654', N'mansoura', N'tr', N'14555555', N'yt@g.com', 50)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
SET IDENTITY_INSERT [dbo].[TheraGroup] ON 

INSERT [dbo].[TheraGroup] ([ID], [Name], [Code], [IsActive]) VALUES (1, N'thera', N'ss', 1)
INSERT [dbo].[TheraGroup] ([ID], [Name], [Code], [IsActive]) VALUES (2, N'thera2', N'bb', 0)
SET IDENTITY_INSERT [dbo].[TheraGroup] OFF
SET IDENTITY_INSERT [dbo].[TheraSubGroup] ON 

INSERT [dbo].[TheraSubGroup] ([ID], [Name], [Code], [IsActive], [TheraGroupID]) VALUES (1, N'theraSup1', N'hh', 1, 1)
INSERT [dbo].[TheraSubGroup] ([ID], [Name], [Code], [IsActive], [TheraGroupID]) VALUES (2, N'theraSup2', N'tt', 1, 2)
SET IDENTITY_INSERT [dbo].[TheraSubGroup] OFF
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([ID], [Name], [Description], [Code], [IsActive]) VALUES (1, N'un1', N'ytre', N'jhgf', 1)
SET IDENTITY_INSERT [dbo].[Unit] OFF
ALTER TABLE [dbo].[Order] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [QuentityInEachOrder]
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
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Pharmacy_pharmacyLoggedInID] FOREIGN KEY([pharmacyLoggedInID])
REFERENCES [dbo].[Pharmacy] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Pharmacy_pharmacyLoggedInID]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Drug]  WITH CHECK ADD  CONSTRAINT [FK_Drug_Country_countryID] FOREIGN KEY([countryID])
REFERENCES [dbo].[Country] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Drug] CHECK CONSTRAINT [FK_Drug_Country_countryID]
GO
ALTER TABLE [dbo].[Drug]  WITH CHECK ADD  CONSTRAINT [FK_Drug_Firm_firmID] FOREIGN KEY([firmID])
REFERENCES [dbo].[Firm] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Drug] CHECK CONSTRAINT [FK_Drug_Firm_firmID]
GO
ALTER TABLE [dbo].[Drug]  WITH CHECK ADD  CONSTRAINT [FK_Drug_Form_formID] FOREIGN KEY([formID])
REFERENCES [dbo].[Form] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Drug] CHECK CONSTRAINT [FK_Drug_Form_formID]
GO
ALTER TABLE [dbo].[Drug]  WITH CHECK ADD  CONSTRAINT [FK_Drug_ROAD_rOADID] FOREIGN KEY([rOADID])
REFERENCES [dbo].[ROAD] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Drug] CHECK CONSTRAINT [FK_Drug_ROAD_rOADID]
GO
ALTER TABLE [dbo].[Drug]  WITH CHECK ADD  CONSTRAINT [FK_Drug_TheraGroup_TheraGroupID] FOREIGN KEY([TheraGroupID])
REFERENCES [dbo].[TheraGroup] ([ID])
GO
ALTER TABLE [dbo].[Drug] CHECK CONSTRAINT [FK_Drug_TheraGroup_TheraGroupID]
GO
ALTER TABLE [dbo].[Drug]  WITH CHECK ADD  CONSTRAINT [FK_Drug_TheraSubGroup_TheraSubGroupID] FOREIGN KEY([TheraSubGroupID])
REFERENCES [dbo].[TheraSubGroup] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Drug] CHECK CONSTRAINT [FK_Drug_TheraSubGroup_TheraSubGroupID]
GO
ALTER TABLE [dbo].[Drug]  WITH CHECK ADD  CONSTRAINT [FK_Drug_Unit_unitID] FOREIGN KEY([unitID])
REFERENCES [dbo].[Unit] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Drug] CHECK CONSTRAINT [FK_Drug_Unit_unitID]
GO
ALTER TABLE [dbo].[DrugDetails]  WITH CHECK ADD  CONSTRAINT [FK_DrugDetails_Drug_drugID] FOREIGN KEY([drugID])
REFERENCES [dbo].[Drug] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DrugDetails] CHECK CONSTRAINT [FK_DrugDetails_Drug_drugID]
GO
ALTER TABLE [dbo].[DrugDetails]  WITH CHECK ADD  CONSTRAINT [FK_DrugDetails_Pharmacy_pharmacyLoggedInID] FOREIGN KEY([pharmacyLoggedInID])
REFERENCES [dbo].[Pharmacy] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DrugDetails] CHECK CONSTRAINT [FK_DrugDetails_Pharmacy_pharmacyLoggedInID]
GO
ALTER TABLE [dbo].[DrugInteraction]  WITH CHECK ADD  CONSTRAINT [FK_DrugInteraction_Drug_DrugId] FOREIGN KEY([DrugId])
REFERENCES [dbo].[Drug] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DrugInteraction] CHECK CONSTRAINT [FK_DrugInteraction_Drug_DrugId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Pharmacy_pharmacyID] FOREIGN KEY([pharmacyID])
REFERENCES [dbo].[Pharmacy] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Pharmacy_pharmacyID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Patients_patientId] FOREIGN KEY([patientId])
REFERENCES [dbo].[Patients] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Patients_patientId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Pharmacy_PharmacyID] FOREIGN KEY([PharmacyID])
REFERENCES [dbo].[Pharmacy] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Pharmacy_PharmacyID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Pledge_pledgeId] FOREIGN KEY([pledgeId])
REFERENCES [dbo].[Pledge] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Pledge_pledgeId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Supplier_supplierID] FOREIGN KEY([supplierID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Supplier_supplierID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Drug_drugID] FOREIGN KEY([drugID])
REFERENCES [dbo].[Drug] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Drug_drugID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order_OrderId]
GO
ALTER TABLE [dbo].[PurchasedItem]  WITH CHECK ADD  CONSTRAINT [FK_PurchasedItem_Drug_DrugId] FOREIGN KEY([DrugId])
REFERENCES [dbo].[Drug] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PurchasedItem] CHECK CONSTRAINT [FK_PurchasedItem_Drug_DrugId]
GO
ALTER TABLE [dbo].[PurchasedItem]  WITH CHECK ADD  CONSTRAINT [FK_PurchasedItem_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PurchasedItem] CHECK CONSTRAINT [FK_PurchasedItem_Order_OrderId]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category_categoryID] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category_categoryID]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_TheraGroup_theraSubID] FOREIGN KEY([theraSubID])
REFERENCES [dbo].[TheraGroup] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_TheraGroup_theraSubID]
GO
ALTER TABLE [dbo].[TheraSubGroup]  WITH CHECK ADD  CONSTRAINT [FK_TheraSubGroup_TheraGroup_TheraGroupID] FOREIGN KEY([TheraGroupID])
REFERENCES [dbo].[TheraGroup] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TheraSubGroup] CHECK CONSTRAINT [FK_TheraSubGroup_TheraGroup_TheraGroupID]
GO
