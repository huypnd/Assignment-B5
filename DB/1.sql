USE [master]
GO
/****** Object:  Database [b5prj]    Script Date: 8/23/2022 1:32:50 AM ******/
CREATE DATABASE [b5prj]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'b5prj', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\b5prj.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'b5prj_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\b5prj_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [b5prj] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [b5prj].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [b5prj] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [b5prj] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [b5prj] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [b5prj] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [b5prj] SET ARITHABORT OFF 
GO
ALTER DATABASE [b5prj] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [b5prj] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [b5prj] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [b5prj] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [b5prj] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [b5prj] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [b5prj] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [b5prj] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [b5prj] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [b5prj] SET  DISABLE_BROKER 
GO
ALTER DATABASE [b5prj] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [b5prj] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [b5prj] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [b5prj] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [b5prj] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [b5prj] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [b5prj] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [b5prj] SET RECOVERY FULL 
GO
ALTER DATABASE [b5prj] SET  MULTI_USER 
GO
ALTER DATABASE [b5prj] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [b5prj] SET DB_CHAINING OFF 
GO
ALTER DATABASE [b5prj] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [b5prj] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [b5prj] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [b5prj] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'b5prj', N'ON'
GO
ALTER DATABASE [b5prj] SET QUERY_STORE = OFF
GO
USE [b5prj]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/23/2022 1:32:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[eid] [int] NOT NULL,
	[ename] [varchar](150) NOT NULL,
	[idOffice] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Office]    Script Date: 8/23/2022 1:32:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Office](
	[id] [int] NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OffStyle]    Script Date: 8/23/2022 1:32:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OffStyle](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offtime]    Script Date: 8/23/2022 1:32:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offtime](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[eid] [int] NOT NULL,
	[fromDate] [date] NOT NULL,
	[toDate] [date] NOT NULL,
	[OSId] [int] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 8/23/2022 1:32:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[eid] [int] NOT NULL,
	[salary] [int] NOT NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 8/23/2022 1:32:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[eid] [int] NOT NULL,
	[checkin] [datetime] NOT NULL,
	[checkout] [datetime] NOT NULL,
	[coef] [int] NOT NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TimeSheet] ADD  CONSTRAINT [DF_TimeSheet_coef]  DEFAULT ((1)) FOR [coef]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([idOffice])
REFERENCES [dbo].[Office] ([id])
GO
ALTER TABLE [dbo].[Offtime]  WITH CHECK ADD FOREIGN KEY([OSId])
REFERENCES [dbo].[OffStyle] ([id])
GO
ALTER TABLE [dbo].[Offtime]  WITH CHECK ADD  CONSTRAINT [FK_Offtime_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[Offtime] CHECK CONSTRAINT [FK_Offtime_Employee]
GO
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FK_Salary_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK_Salary_Employee]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Employee]
GO
USE [master]
GO
ALTER DATABASE [b5prj] SET  READ_WRITE 
GO
