USE [master]
GO
/****** Object:  Database [Londoneasy4uMART]    Script Date: 25/11/2021 05:07:02 p. m. ******/
CREATE DATABASE [Londoneasy4uMART]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Londoneasy4uMART', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Londoneasy4uMART.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Londoneasy4uMART_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Londoneasy4uMART_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Londoneasy4uMART] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Londoneasy4uMART].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Londoneasy4uMART] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET ARITHABORT OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Londoneasy4uMART] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Londoneasy4uMART] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Londoneasy4uMART] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Londoneasy4uMART] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET RECOVERY FULL 
GO
ALTER DATABASE [Londoneasy4uMART] SET  MULTI_USER 
GO
ALTER DATABASE [Londoneasy4uMART] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Londoneasy4uMART] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Londoneasy4uMART] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Londoneasy4uMART] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Londoneasy4uMART] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Londoneasy4uMART] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Londoneasy4uMART', N'ON'
GO
ALTER DATABASE [Londoneasy4uMART] SET QUERY_STORE = OFF
GO
USE [Londoneasy4uMART]
GO
/****** Object:  User [NT SERVICE\MSSQLServerOLAPService]    Script Date: 25/11/2021 05:07:03 p. m. ******/
CREATE USER [NT SERVICE\MSSQLServerOLAPService] FOR LOGIN [NT SERVICE\MSSQLServerOLAPService] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [NT SERVICE\MSSQLServerOLAPService]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [NT SERVICE\MSSQLServerOLAPService]
GO
/****** Object:  Table [dbo].[cliente_mart]    Script Date: 25/11/2021 05:07:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente_mart](
	[id] [int] NULL,
	[nombre_completo] [nvarchar](511) NULL,
	[nacionalidad] [nvarchar](255) NULL,
	[origen_cliente] [nvarchar](18) NULL,
	[telefono] [nvarchar](255) NULL,
	[correo] [nvarchar](255) NULL,
	[fecha_nac] [date] NULL,
	[edad] [int] NULL,
	[ocupacion] [nvarchar](255) NULL,
	[sexo] [nvarchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuarto_mart]    Script Date: 25/11/2021 05:07:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuarto_mart](
	[id] [int] NULL,
	[nombre] [nvarchar](255) NULL,
	[direccion] [nvarchar](255) NULL,
	[piso] [nvarchar](255) NULL,
	[precio] [numeric](10, 2) NULL,
	[categoria_cuarto] [nvarchar](10) NULL,
	[SK_Zona] [int] NULL,
	[Nombre_Zona] [nvarchar](255) NULL,
	[SK_Tipo_Cuarto] [int] NULL,
	[Nombre_Tipo_Cuarto] [nvarchar](255) NULL,
	[Amoblado] [nvarchar](22) NULL,
	[Baño] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fact_contrato]    Script Date: 25/11/2021 05:07:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_contrato](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sk_cliente] [int] NULL,
	[nombre_completo] [nvarchar](511) NULL,
	[nacionalidad] [nvarchar](255) NULL,
	[origen_cliente] [nvarchar](18) NULL,
	[telefono] [nvarchar](255) NULL,
	[correo] [nvarchar](255) NULL,
	[fecha_nac] [date] NULL,
	[edad] [int] NULL,
	[ocupacion] [nvarchar](255) NULL,
	[sexo] [nvarchar](9) NULL,
	[sk_cuarto] [int] NULL,
	[nombre_cuarto] [nvarchar](255) NULL,
	[direccion] [nvarchar](255) NULL,
	[piso] [nvarchar](255) NULL,
	[precio] [numeric](10, 2) NULL,
	[categoria_cuarto] [nvarchar](10) NULL,
	[sk_zona] [int] NULL,
	[nombre_zona] [nvarchar](255) NULL,
	[sk_tipo_cuarto] [int] NULL,
	[nombre_tipo_cuarto] [nvarchar](255) NULL,
	[amoblado] [nvarchar](22) NULL,
	[baño] [nvarchar](15) NULL,
	[fec_inicio] [date] NULL,
	[fec_final] [date] NULL,
	[renovacion] [nvarchar](21) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Londoneasy4uMART] SET  READ_WRITE 
GO
