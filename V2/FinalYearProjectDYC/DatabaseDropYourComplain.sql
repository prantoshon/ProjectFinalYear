USE [master]
GO
/****** Object:  Database [DatabaseDropYourComplain]    Script Date: 11/10/2019 21:31:24 ******/
CREATE DATABASE [DatabaseDropYourComplain] ON  PRIMARY 
( NAME = N'DatabaseDropYourComplain', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DatabaseDropYourComplain.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DatabaseDropYourComplain_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DatabaseDropYourComplain_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DatabaseDropYourComplain] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DatabaseDropYourComplain].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DatabaseDropYourComplain] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET ARITHABORT OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET AUTO_CLOSE ON
GO
ALTER DATABASE [DatabaseDropYourComplain] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DatabaseDropYourComplain] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DatabaseDropYourComplain] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DatabaseDropYourComplain] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET  ENABLE_BROKER
GO
ALTER DATABASE [DatabaseDropYourComplain] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DatabaseDropYourComplain] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DatabaseDropYourComplain] SET  READ_WRITE
GO
ALTER DATABASE [DatabaseDropYourComplain] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DatabaseDropYourComplain] SET  MULTI_USER
GO
ALTER DATABASE [DatabaseDropYourComplain] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DatabaseDropYourComplain] SET DB_CHAINING OFF
GO
USE [DatabaseDropYourComplain]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 11/10/2019 21:31:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](25) NULL,
	[Password] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON
INSERT [dbo].[Login] ([Id], [UserName], [Password]) VALUES (1, N'Admin', N'123')
SET IDENTITY_INSERT [dbo].[Login] OFF
/****** Object:  Table [dbo].[AddComplainInDatabaseTable]    Script Date: 11/10/2019 21:31:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddComplainInDatabaseTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComplainCategory] [varchar](25) NULL,
	[ComplainaArea] [varchar](25) NULL,
	[RoadNumber] [varchar](25) NULL,
	[ComplainDeatils] [varchar](max) NULL,
	[Photo] [varchar](max) NULL,
	[ComplainerName] [varchar](25) NULL,
	[Email] [varchar](25) NULL,
	[ContractNumber] [varchar](11) NULL,
	[GiveStatus] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AddComplainInDatabaseTable] ON
INSERT [dbo].[AddComplainInDatabaseTable] ([Id], [ComplainCategory], [ComplainaArea], [RoadNumber], [ComplainDeatils], [Photo], [ComplainerName], [Email], [ContractNumber], [GiveStatus]) VALUES (1, N'Main Hall Missing', N'Mohammadpur', N'8', N'thtth', N'~/Content/upload/400181716download (3).png', N'reyy', N'ratun@gmail.com', N'0354586789', N'Done')
INSERT [dbo].[AddComplainInDatabaseTable] ([Id], [ComplainCategory], [ComplainaArea], [RoadNumber], [ComplainDeatils], [Photo], [ComplainerName], [Email], [ContractNumber], [GiveStatus]) VALUES (2, N'Main Hall Missing', N'Mohammadpur', N'81', N'fhdf', N'~/Content/upload/896277553download (3).png', NULL, NULL, NULL, N'Pending')
INSERT [dbo].[AddComplainInDatabaseTable] ([Id], [ComplainCategory], [ComplainaArea], [RoadNumber], [ComplainDeatils], [Photo], [ComplainerName], [Email], [ContractNumber], [GiveStatus]) VALUES (3, N'Main Hall Missing', N'Mohammadpur', N'888', N'new problem', N'~/Content/upload/75630604download (3).png', N'ratul khan', N'mushrif35-1429@diu.edu.bd', N'0354586789', NULL)
INSERT [dbo].[AddComplainInDatabaseTable] ([Id], [ComplainCategory], [ComplainaArea], [RoadNumber], [ComplainDeatils], [Photo], [ComplainerName], [Email], [ContractNumber], [GiveStatus]) VALUES (4, N'Draingae', N'MirPur-1', N'77', N'hgh', N'~/Content/upload/1612037460download (3).png', N'reyy', N'mushrif35-1429@diu.edu.bd', N'0354586789', NULL)
INSERT [dbo].[AddComplainInDatabaseTable] ([Id], [ComplainCategory], [ComplainaArea], [RoadNumber], [ComplainDeatils], [Photo], [ComplainerName], [Email], [ContractNumber], [GiveStatus]) VALUES (5, N'Main Hall Missing', N'Mohammadpur', N'44', NULL, N'~/Content/upload/1475132853download (3).png', NULL, N'mushrif35-1429@diu.edu.bd', NULL, NULL)
SET IDENTITY_INSERT [dbo].[AddComplainInDatabaseTable] OFF
