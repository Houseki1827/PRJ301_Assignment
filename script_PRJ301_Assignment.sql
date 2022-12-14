USE [master]
GO
/****** Object:  Database [PRJ301_Assignment]    Script Date: 07-Nov-22 9:28:11 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [varchar](150) NOT NULL,
	[Password] [varchar](150) NOT NULL,
	[DisplayName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[SessionNo] [int] NOT NULL,
	[StudentID] [varchar](8) NOT NULL,
	[Attend] [bit] NOT NULL,
	[Description] [varchar](150) NULL,
	[RecordTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[SessionNo] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[FeatureID] [int] NOT NULL,
	[FeatureName] [varchar](150) NOT NULL,
	[URL] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [int] NOT NULL,
	[GroupName] [varchar](150) NOT NULL,
	[SubjectID] [varchar](7) NOT NULL,
	[LecturerID] [varchar](150) NOT NULL,
	[Semester] [varchar](150) NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[LecturerID] [varchar](150) NOT NULL,
	[LecturerName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[LecturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[RoleID] [int] NOT NULL,
	[Username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role_Account] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[RoleID] [int] NOT NULL,
	[FeatureID] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomID] [int] NOT NULL,
	[RoomName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionNo] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Slot] [int] NOT NULL,
	[LecturerID] [varchar](150) NOT NULL,
	[Attend] [bit] NOT NULL,
	[Index] [int] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[SessionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [varchar](8) NOT NULL,
	[StudentName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[StudentID] [varchar](8) NOT NULL,
	[GroupID] [int] NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [varchar](7) NOT NULL,
	[SubjectName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 07-Nov-22 9:28:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[Slot] [int] NOT NULL,
	[Description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[Slot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [DisplayName]) VALUES (N'HE160001', N'anhdn', N'Do Ngoc Anh')
INSERT [dbo].[Account] ([Username], [Password], [DisplayName]) VALUES (N'AnhNV64', N'anhnv64', N'Nguyen Viet Anh')
INSERT [dbo].[Account] ([Username], [Password], [DisplayName]) VALUES (N'HE160000', N'baobg', N'Bui Gia Bao')
INSERT [dbo].[Account] ([Username], [Password], [DisplayName]) VALUES (N'HE160002', N'hoangnb', N'Nguyen Bao Hoang')
INSERT [dbo].[Account] ([Username], [Password], [DisplayName]) VALUES (N'SonNT5', N'sonnt5', N'Ngo Tung Son')
GO
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (1, N'HE160000', 1, NULL, CAST(N'2022-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (1, N'HE160001', 1, NULL, CAST(N'2022-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (1, N'HE160002', 1, NULL, CAST(N'2022-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (2, N'HE160000', 1, NULL, CAST(N'2022-09-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (2, N'HE160001', 0, NULL, CAST(N'2022-09-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (2, N'HE160002', 1, NULL, CAST(N'2022-09-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (3, N'HE160000', 1, NULL, CAST(N'2022-09-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (3, N'HE160001', 1, N'x', CAST(N'2022-09-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (3, N'HE160002', 0, NULL, CAST(N'2022-09-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (4, N'HE160000', 1, N'9', CAST(N'2022-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (4, N'HE160001', 0, N'v', CAST(N'2022-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([SessionNo], [StudentID], [Attend], [Description], [RecordTime]) VALUES (4, N'HE160002', 1, N'8', CAST(N'2022-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureID], [FeatureName], [URL]) VALUES (1, N'Attendance', N'/Report/Attendance')
INSERT [dbo].[Feature] ([FeatureID], [FeatureName], [URL]) VALUES (2, N'View Schedule', N'/Report/ViewSchedule')
INSERT [dbo].[Feature] ([FeatureID], [FeatureName], [URL]) VALUES (3, N'View Attendance', N'/Report/ViewAttendance')
GO
INSERT [dbo].[Group] ([GroupID], [GroupName], [SubjectID], [LecturerID], [Semester], [Year]) VALUES (1, N'PRJ301-SE1643', N'PRJ301', N'SonNT5', N'FALL', 2022)
INSERT [dbo].[Group] ([GroupID], [GroupName], [SubjectID], [LecturerID], [Semester], [Year]) VALUES (2, N'MAS291-SE1643', N'MAS291', N'AnhNV64', N'FALL', 2022)
INSERT [dbo].[Group] ([GroupID], [GroupName], [SubjectID], [LecturerID], [Semester], [Year]) VALUES (3, N'JPD123-SE1643', N'JPD123', N'NgocNT84', N'FALL', 2022)
INSERT [dbo].[Group] ([GroupID], [GroupName], [SubjectID], [LecturerID], [Semester], [Year]) VALUES (4, N'IOT102-SE1643', N'IOT102', N'AnhKD', N'FALL', 2022)
INSERT [dbo].[Group] ([GroupID], [GroupName], [SubjectID], [LecturerID], [Semester], [Year]) VALUES (5, N'SWE201c-SE1643', N'SWE201c', N'ThangPD10', N'FALL', 2022)
GO
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'AnhKD', N'Khuat Duc Anh')
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'AnhNV64', N'Nguyen Viet Anh')
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'NgocNT84', N'Nguyen Thuy Ngoc')
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'SonNT5', N'Ngo Tung Son')
INSERT [dbo].[Lecturer] ([LecturerID], [LecturerName]) VALUES (N'ThangPD10', N'Pham Duc Thang')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Lecturer')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Student')
GO
INSERT [dbo].[Role_Account] ([RoleID], [Username]) VALUES (1, N'AnhNV64')
INSERT [dbo].[Role_Account] ([RoleID], [Username]) VALUES (1, N'SonNT5')
INSERT [dbo].[Role_Account] ([RoleID], [Username]) VALUES (2, N'HE160001')
INSERT [dbo].[Role_Account] ([RoleID], [Username]) VALUES (2, N'HE160000')
INSERT [dbo].[Role_Account] ([RoleID], [Username]) VALUES (2, N'HE160002')
GO
INSERT [dbo].[Role_Feature] ([RoleID], [FeatureID]) VALUES (1, 1)
INSERT [dbo].[Role_Feature] ([RoleID], [FeatureID]) VALUES (1, 2)
INSERT [dbo].[Role_Feature] ([RoleID], [FeatureID]) VALUES (1, 3)
INSERT [dbo].[Role_Feature] ([RoleID], [FeatureID]) VALUES (2, 2)
INSERT [dbo].[Role_Feature] ([RoleID], [FeatureID]) VALUES (2, 3)
GO
INSERT [dbo].[Room] ([RoomID], [RoomName]) VALUES (1, N'DE-C205')
INSERT [dbo].[Room] ([RoomID], [RoomName]) VALUES (2, N'DE-C203')
INSERT [dbo].[Room] ([RoomID], [RoomName]) VALUES (3, N'BE-301')
GO
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (1, 1, 1, CAST(N'2022-09-05' AS Date), 2, N'SonNT5', 1, 1)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (2, 1, 1, CAST(N'2022-09-07' AS Date), 2, N'SonNT5', 1, 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (3, 1, 1, CAST(N'2022-09-09' AS Date), 2, N'SonNT5', 1, 3)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (4, 1, 1, CAST(N'2022-09-12' AS Date), 2, N'SonNT5', 1, 4)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (5, 2, 1, CAST(N'2022-09-05' AS Date), 3, N'AnhNV64', 1, 1)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (6, 2, 1, CAST(N'2022-09-07' AS Date), 3, N'AnhNV64', 1, 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (7, 2, 1, CAST(N'2022-09-09' AS Date), 3, N'AnhNV64', 1, 3)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (8, 2, 1, CAST(N'2022-09-12' AS Date), 3, N'AnhNV64', 1, 4)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (9, 3, 2, CAST(N'2022-09-06' AS Date), 3, N'NgocNT84', 1, 1)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (10, 3, 2, CAST(N'2022-09-08' AS Date), 2, N'NgocNT84', 1, 2)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (11, 3, 2, CAST(N'2022-09-08' AS Date), 3, N'NgocNT84', 1, 3)
INSERT [dbo].[Session] ([SessionNo], [GroupID], [RoomID], [Date], [Slot], [LecturerID], [Attend], [Index]) VALUES (12, 3, 2, CAST(N'2022-09-13' AS Date), 3, N'NgocNT84', 1, 4)
GO
INSERT [dbo].[Student] ([StudentID], [StudentName]) VALUES (N'HE160000', N'Bui Gia Bao')
INSERT [dbo].[Student] ([StudentID], [StudentName]) VALUES (N'HE160001', N'Do Ngoc Anh')
INSERT [dbo].[Student] ([StudentID], [StudentName]) VALUES (N'HE160002', N'Nguyen Bao Hoang')
INSERT [dbo].[Student] ([StudentID], [StudentName]) VALUES (N'HE160003', N'Tran Gia Linh')
INSERT [dbo].[Student] ([StudentID], [StudentName]) VALUES (N'HE160004', N'Pham Thuc Trinh')
GO
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', 1)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', 2)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', 3)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', 4)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160000', 5)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160001', 1)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160001', 2)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160001', 3)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160001', 4)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160002', 1)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160002', 2)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160002', 4)
INSERT [dbo].[Student_Group] ([StudentID], [GroupID]) VALUES (N'HE160002', 5)
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'IOT102', N'Internet of Things')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'JPD123', N'Elementary Japanese')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'MAS291', N'Statistics and Probability')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (N'SWE201c', N'Introduction to Software Engineering')
GO
INSERT [dbo].[TimeSlot] ([Slot], [Description]) VALUES (1, N'7:30-9:00')
INSERT [dbo].[TimeSlot] ([Slot], [Description]) VALUES (2, N'9:10-10:40')
INSERT [dbo].[TimeSlot] ([Slot], [Description]) VALUES (3, N'10:50-12:20')
INSERT [dbo].[TimeSlot] ([Slot], [Description]) VALUES (4, N'12:50-14:20')
INSERT [dbo].[TimeSlot] ([Slot], [Description]) VALUES (5, N'14:30-16:00')
INSERT [dbo].[TimeSlot] ([Slot], [Description]) VALUES (6, N'16:10-17:40')
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
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Lecturer] ([LecturerID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Feature] ([FeatureID])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Lecturer] ([LecturerID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
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
USE [master]
GO
ALTER DATABASE [PRJ301_Assignment] SET  READ_WRITE 
GO
