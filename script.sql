USE [master]
GO
/****** Object:  Database [SucursalesDB]    Script Date: 31/03/2024 14:45:39 ******/
CREATE DATABASE [SucursalesDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SucursalesDB', FILENAME = N'D:\Nueva carpeta\MSSQL16.SQLEXPRESS\MSSQL\DATA\SucursalesDB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SucursalesDB_log', FILENAME = N'D:\Nueva carpeta\MSSQL16.SQLEXPRESS\MSSQL\DATA\SucursalesDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SucursalesDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SucursalesDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SucursalesDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SucursalesDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SucursalesDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SucursalesDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SucursalesDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SucursalesDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SucursalesDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SucursalesDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SucursalesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SucursalesDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SucursalesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SucursalesDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SucursalesDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SucursalesDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SucursalesDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SucursalesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SucursalesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SucursalesDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SucursalesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SucursalesDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SucursalesDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SucursalesDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SucursalesDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SucursalesDB] SET  MULTI_USER 
GO
ALTER DATABASE [SucursalesDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SucursalesDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SucursalesDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SucursalesDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SucursalesDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SucursalesDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SucursalesDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [SucursalesDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SucursalesDB]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 31/03/2024 14:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
	[Telefono] [nvarchar](max) NOT NULL,
	[CorreoElectronico] [nvarchar](max) NOT NULL,
	[HorarioAtencion] [nvarchar](max) NOT NULL,
	[GerenteSucursal] [nvarchar](max) NOT NULL,
	[Moneda] [int] NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[CreadoPor] [int] NULL,
	[FechaUltimaActualizacion] [datetime2](7) NOT NULL,
	[ModificadoPor] [int] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 31/03/2024 14:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identificacion] [bigint] NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Rol] [int] NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[CreadoPor] [int] NOT NULL,
	[FechaModificacion] [datetime2](7) NOT NULL,
	[ModificadoPor] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 31/03/2024 14:45:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLogs]    Script Date: 31/03/2024 14:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Application] [nvarchar](max) NOT NULL,
	[Action] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[AditionalData] [nvarchar](max) NOT NULL,
	[AuthProvider] [nvarchar](max) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AuditLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 31/03/2024 14:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[MessageTemplate] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NULL,
	[TimeStamp] [datetime] NULL,
	[Exception] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [SucursalesDB] SET  READ_WRITE 
GO
