﻿USE [master]
GO
/****** Object:  Database [PRJ301_Assignment]    Script Date: 13-Oct-22 11:21:03 PM ******/
CREATE DATABASE [PRJ301_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_Assignment', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_Assignment_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_Assignment', N'ON'
GO
ALTER DATABASE [PRJ301_Assignment] SET QUERY_STORE = OFF
GO
USE [PRJ301_Assignment]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Attend] [varchar](50) NOT NULL,
	[StudentID] [varchar](8) NOT NULL,
	[SessionNo] [varchar](100) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[Attend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [varchar](100) NOT NULL,
	[SubjectID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[LecturerID] [varchar](100) NOT NULL,
	[LecturerName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[LecturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Room] [varchar](10) NOT NULL,
	[Building] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionNo] [varchar](100) NOT NULL,
	[GroupID] [varchar](100) NOT NULL,
	[Room] [varchar](10) NOT NULL,
	[Date] [date] NOT NULL,
	[Slot] [int] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[SessionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [varchar](8) NOT NULL,
	[StudentName] [varchar](200) NOT NULL,
	[Gender] [bit] NOT NULL,
	[DoB] [date] NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[Phone] [varchar](11) NULL,
	[Email] [varchar](150) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[StudentID] [varchar](8) NOT NULL,
	[GroupID] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [varchar](10) NOT NULL,
	[SubjectName] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Superviser]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Superviser](
	[GroupID] [varchar](100) NOT NULL,
	[LecturerID] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Superviser] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[LecturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 13-Oct-22 11:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[Slot] [int] NOT NULL,
	[Time] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[Slot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 1', N'HE160000', N'PRJ301 - 1', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 10', N'HE160000', N'PRJ301 - 10', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 11', N'HE160000', N'PRJ301 - 11', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 12', N'HE160000', N'PRJ301 - 12', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 13', N'HE160000', N'PRJ301 - 13', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 14', N'HE160000', N'PRJ301 - 14', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 15', N'HE160000', N'PRJ301 - 15', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 16', N'HE160000', N'PRJ301 - 16', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 17', N'HE160000', N'PRJ301 - 17', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 18', N'HE160000', N'PRJ301 - 18', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 19', N'HE160000', N'PRJ301 - 19', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 2', N'HE160000', N'PRJ301 - 2', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 20', N'HE160000', N'PRJ301 - 20', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 21', N'HE160000', N'PRJ301 - 21', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 22', N'HE160000', N'PRJ301 - 22', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 23', N'HE160000', N'PRJ301 - 23', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 24', N'HE160000', N'PRJ301 - 24', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 25', N'HE160000', N'PRJ301 - 25', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 26', N'HE160000', N'PRJ301 - 26', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 27', N'HE160000', N'PRJ301 - 27', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 28', N'HE160000', N'PRJ301 - 28', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 29', N'HE160000', N'PRJ301 - 29', NULL)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 3', N'HE160000', N'PRJ301 - 3', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 4', N'HE160000', N'PRJ301 - 4', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 5', N'HE160000', N'PRJ301 - 5 ', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 6', N'HE160000', N'PRJ301 - 6', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 7', N'HE160000', N'PRJ301 - 7 ', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 8', N'HE160000', N'PRJ301 - 8 ', 1)
INSERT [dbo].[Attendance] ([Attend], [StudentID], [SessionNo], [Status]) VALUES (N'HE160000 - SE1643 - PRJ301 - 9', N'HE160000', N'PRJ301 - 9', 1)
GO
INSERT [dbo].[Group] ([GroupID], [SubjectID]) VALUES (N'SE1643 - IOT102', N'IOT102')
INSERT [dbo].[Group] ([GroupID], [SubjectID]) VALUES (N'SE1643 - JPD123', N'JPD123')
INSERT [dbo].[Group] ([GroupID], [SubjectID]) VALUES (N'SE1643 - MAS291', N'MAS291')
INSERT [dbo].[Group] ([GroupID], [SubjectID]) VALUES (N'SE1643 - PRJ301', N'PRJ301')
INSERT [dbo].[Group] ([GroupID], [SubjectID]) VALUES (N'SE1643 - SWE201c', N'SWE201c')
GO
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'AnhKD', N'Khuat Duc Anh')
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'AnhNV64', N'Nguyen Viet Anh')
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'NgocNT84', N'Nguyen Thuy Ngoc')
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'SonNT5', N'Ngo Tung Son')
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'ThangPD10', N'Pham Duc Thang')
GO
INSERT [dbo].[Room] ([Room], [Building]) VALUES (N'BE-301', N'Beta')
INSERT [dbo].[Room] ([Room], [Building]) VALUES (N'DE-C203', N'Delta')
INSERT [dbo].[Room] ([Room], [Building]) VALUES (N'DE-C205', N'Delta')
GO
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 1', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-05' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 10', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-26' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 11', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-28' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 12', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-30' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 13', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-03' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 14', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-05' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 15', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-07' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 16', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-10' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 17', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-12' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 18', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-14' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 19', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-17' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 2', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-07' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 20', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-19' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 21', N'SE1643 - PRJ301 ', N'DE-C205', CAST(N'2022-10-21' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 22', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-24' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 23', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-26' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 24', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-28' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 25', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-10-31' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 26', N'SE1643 - PRJ301 ', N'DE-C205', CAST(N'2022-11-02' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 27', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-11-04' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 28', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-11-07' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 29', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-11-09' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 3', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-09' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 4', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-12' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 5', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-14' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 6', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-16' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 7', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-19' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 8', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-21' AS Date), 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [Room], [Date], [Slot]) VALUES (N'PRJ301 - 9', N'SE1643 - PRJ301', N'DE-C205', CAST(N'2022-09-23' AS Date), 2)
GO
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160000', N'Bui Gia Bao', 1, CAST(N'2002-01-05' AS Date), N'Ha Noi', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160001', N'Do Ngoc Anh', 1, CAST(N'2002-02-11' AS Date), N'Nam Dinh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160002', N'Nguyen Bao Hoang', 1, CAST(N'2002-03-04' AS Date), N'Thai Binh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160003', N'Tran Gia Linh', 1, CAST(N'2002-05-22' AS Date), N'Hai Duong', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160004', N'Pham Thuc Trinh', 0, CAST(N'2002-06-30' AS Date), N'Thai Binh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160005', N'Pham Ngoc Huyen', 0, CAST(N'2002-03-28' AS Date), N'Hai Phong', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160006', N'Luong Minh Quang', 1, CAST(N'2002-06-26' AS Date), N'Da Nang', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160007', N'Nguyen Anh Dung', 1, CAST(N'2002-07-19' AS Date), N'Ha Noi', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160008', N'Phung The Anh', 1, CAST(N'2002-08-25' AS Date), N'Quang Ninh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160009', N'Hoang Minh Anh', 0, CAST(N'2002-09-19' AS Date), N'Bac Giang', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160010', N'Tran Tuan Anh', 1, CAST(N'2002-03-21' AS Date), N'Bac Ninh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160011', N'Vo Thi Ha', 0, CAST(N'2002-06-06' AS Date), N'Nghe An', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160012', N'Dao Ngoc Mai', 0, CAST(N'2002-09-11' AS Date), N'Hai Phong', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160013', N'Nguyen Thi Hue', 0, CAST(N'2002-06-20' AS Date), N'Ha Tinh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160014', N'Bui Cong Minh', 1, CAST(N'2002-05-15' AS Date), N'Ninh Binh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160015', N'Trinh Quoc Phuong', 1, CAST(N'2002-08-24' AS Date), N'Ha Noi', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160016', N'Tran Minh Hao', 1, CAST(N'2002-12-06' AS Date), N'Ha Noi', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160017', N'Nguyen Khanh Linh', 0, CAST(N'2002-11-17' AS Date), N'Ha Tinh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160018', N'Trinh Quynh Thu', 0, CAST(N'2002-05-09' AS Date), N'Hai Phong', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160019', N'Ngo Nhat Anh', 1, CAST(N'2002-10-09' AS Date), N'Quang Ninh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160020', N'Hoang Duc Anh', 1, CAST(N'2002-07-29' AS Date), N'Hai Duong', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160021', N'Nguyen Van Trung', 1, CAST(N'2002-05-30' AS Date), N'Thai Binh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160022', N'Do Minh Quan', 1, CAST(N'2002-03-07' AS Date), N'Nam Dinh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160023', N'Le Van Son', 1, CAST(N'2002-11-14' AS Date), N'Ha Noi', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160024', N'Dao Anh Nguyet', 0, CAST(N'2002-06-23' AS Date), N'Ha Tinh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160025', N'Duong Thuy Linh', 0, CAST(N'2002-01-29' AS Date), N'Bac Ninh', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160026', N'Doan Thuy Thuy', 0, CAST(N'2002-09-09' AS Date), N'Thanh Hoa', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160027', N'Do Tan Dung', 1, CAST(N'2002-04-06' AS Date), N'Son La', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160028', N'Pham Ngoc Thanh', 1, CAST(N'2002-01-31' AS Date), N'Lao Cai', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160029', N'Nghiem Gia Ky', 1, CAST(N'2002-02-28' AS Date), N'Yen Bai', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [StudentName], [Gender], [DoB], [Address], [Phone], [Email]) VALUES (N'HE160030', N'Nguyen Duy Manh', 1, CAST(N'2002-07-30' AS Date), N'Ha Giang', NULL, NULL)
GO
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', N'SE1643 - IOT102')
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', N'SE1643 - JPD123')
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', N'SE1643 - MAS291')
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', N'SE1643 - PRJ301')
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', N'SE1643 - SWE201c')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'IOT102', N'Internet of Things')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'JPD123', N'Elementary Japanese')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'MAS291', N'Statistics and Probability')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'SWE201c', N'Introduction to Software Engineering')
GO
INSERT [dbo].[Superviser] ([GroupID], [LecturerID]) VALUES (N'SE1643 - IOT102', N'AnhKD')
INSERT [dbo].[Superviser] ([GroupID], [LecturerID]) VALUES (N'SE1643 - JPD123', N'NgocNT84')
INSERT [dbo].[Superviser] ([GroupID], [LecturerID]) VALUES (N'SE1643 - MAS291', N'AnhNV64')
INSERT [dbo].[Superviser] ([GroupID], [LecturerID]) VALUES (N'SE1643 - PRJ301', N'SonNT5')
INSERT [dbo].[Superviser] ([GroupID], [LecturerID]) VALUES (N'SE1643 - SWE201c', N'ThangPD10')
GO
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (1, N'7:30 - 9:00')
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (2, N'9:10 - 10:40')
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (3, N'10:50 - 12:20')
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (4, N'12:50 - 14:20')
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (5, N'14:30 - 16:00')
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (6, N'16:10 - 17:40')
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([SessionNo])
REFERENCES [dbo].[Session] ([SessionNo])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([Room])
REFERENCES [dbo].[Room] ([Room])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([Slot])
REFERENCES [dbo].[TimeSlot] ([Slot])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
ALTER TABLE [dbo].[Superviser]  WITH CHECK ADD  CONSTRAINT [FK_Superviser_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Superviser] CHECK CONSTRAINT [FK_Superviser_Group]
GO
ALTER TABLE [dbo].[Superviser]  WITH CHECK ADD  CONSTRAINT [FK_Superviser_Lecturer] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Lecturer] ([LecturerID])
GO
ALTER TABLE [dbo].[Superviser] CHECK CONSTRAINT [FK_Superviser_Lecturer]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_Assignment] SET  READ_WRITE 
GO
