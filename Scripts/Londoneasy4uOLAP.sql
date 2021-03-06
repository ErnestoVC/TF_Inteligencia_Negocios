USE [master]
GO
/****** Object:  Database [Londoneasy4uOLAP]    Script Date: 25/11/2021 05:08:32 p. m. ******/
CREATE DATABASE [Londoneasy4uOLAP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Londoneasy4uOLAP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Londoneasy4uOLAP.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Londoneasy4uOLAP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Londoneasy4uOLAP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Londoneasy4uOLAP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Londoneasy4uOLAP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Londoneasy4uOLAP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET ARITHABORT OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET RECOVERY FULL 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET  MULTI_USER 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Londoneasy4uOLAP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Londoneasy4uOLAP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Londoneasy4uOLAP', N'ON'
GO
ALTER DATABASE [Londoneasy4uOLAP] SET QUERY_STORE = OFF
GO
USE [Londoneasy4uOLAP]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 25/11/2021 05:08:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id] [int] NULL,
	[nombre] [nvarchar](255) NULL,
	[apellido] [nvarchar](255) NULL,
	[nacionalidad] [nvarchar](255) NULL,
	[telefono] [nvarchar](255) NULL,
	[correo] [nvarchar](255) NULL,
	[fecha_nac] [date] NULL,
	[ocupacion] [nvarchar](255) NULL,
	[sexo] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 25/11/2021 05:08:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrato](
	[ClienteID] [int] NULL,
	[nacionalidad] [nvarchar](255) NULL,
	[ocupacion] [nvarchar](255) NULL,
	[fecha_nac] [date] NULL,
	[IDCuarto] [int] NULL,
	[Habitación] [nvarchar](255) NULL,
	[direccion] [nvarchar](255) NULL,
	[precio] [numeric](10, 2) NULL,
	[piso] [nvarchar](255) NULL,
	[ID_Tipo_Cuarto] [int] NULL,
	[ID_Zona] [int] NULL,
	[fec_inicio] [date] NULL,
	[fec_final] [date] NULL,
	[SK_tipo_cuarto] [int] NULL,
	[SK_zona] [int] NULL,
	[SK_cliente] [int] NULL,
	[SK_Cuarto] [int] NULL,
	[Zona] [nvarchar](255) NULL,
	[Tipo_Cuarto] [nvarchar](255) NULL,
	[Cliente] [nvarchar](511) NULL,
	[Edad] [int] NULL,
	[Categoria_Precio] [nvarchar](10) NULL,
	[Amoblado] [nvarchar](22) NULL,
	[Servicio] [nvarchar](15) NULL,
	[Piso_Largo] [nvarchar](12) NULL,
	[sexo_char] [nvarchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuarto]    Script Date: 25/11/2021 05:08:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuarto](
	[id] [int] NULL,
	[piso] [nvarchar](255) NULL,
	[nombre] [nvarchar](255) NULL,
	[direccion] [nvarchar](255) NULL,
	[precio] [decimal](10, 2) NULL,
	[tipo_cuarto_id] [int] NULL,
	[zona_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fechas]    Script Date: 25/11/2021 05:08:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fechas](
	[id_cliente] [int] NULL,
	[id_cuarto] [int] NULL,
	[fec_inicio] [date] NULL,
	[fec_final] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_cuarto]    Script Date: 25/11/2021 05:08:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_cuarto](
	[id] [int] NULL,
	[nombre] [nvarchar](255) NULL,
	[amueblado] [bit] NULL,
	[servicio_prv] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zona]    Script Date: 25/11/2021 05:08:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zona](
	[id] [int] NULL,
	[nombre] [nvarchar](255) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Londoneasy4uOLAP] SET  READ_WRITE 
GO
