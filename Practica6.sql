USE [master]
GO
/****** Object:  Database [P_Restaurant]    Script Date: 4/13/2019 2:37:28 PM ******/
CREATE DATABASE [P_Restaurant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'P_Restaurant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\P_Restaurant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'P_Restaurant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\P_Restaurant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [P_Restaurant] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [P_Restaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [P_Restaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [P_Restaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [P_Restaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [P_Restaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [P_Restaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [P_Restaurant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [P_Restaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [P_Restaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [P_Restaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [P_Restaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [P_Restaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [P_Restaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [P_Restaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [P_Restaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [P_Restaurant] SET  ENABLE_BROKER 
GO
ALTER DATABASE [P_Restaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [P_Restaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [P_Restaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [P_Restaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [P_Restaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [P_Restaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [P_Restaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [P_Restaurant] SET RECOVERY FULL 
GO
ALTER DATABASE [P_Restaurant] SET  MULTI_USER 
GO
ALTER DATABASE [P_Restaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [P_Restaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [P_Restaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [P_Restaurant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [P_Restaurant] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'P_Restaurant', N'ON'
GO
ALTER DATABASE [P_Restaurant] SET QUERY_STORE = OFF
GO
USE [P_Restaurant]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 4/13/2019 2:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[vNombre] [varchar](30) NULL,
	[vApPat] [varchar](20) NULL,
	[vApMat] [varchar](20) NULL,
	[vDomicilio] [varchar](50) NULL,
	[vTelefono] [varchar](15) NULL,
	[vNombreCom]  AS (([vNombre]+[vApPat])+[vApMat]),
	[iIdCliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[iIdCombo] [int] NOT NULL,
	[vNombreCombo] [varchar](30) NOT NULL,
	[fPrecio] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdCombo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[vNombre] [varchar](30) NULL,
	[vApPat] [varchar](20) NULL,
	[vApMat] [varchar](20) NULL,
	[dFechaNac] [date] NULL,
	[vDomicilio] [varchar](50) NULL,
	[vTelefono] [varchar](15) NULL,
	[vStatus] [varchar](2) NULL,
	[vNombreCom]  AS (([vNombre]+[vApPat])+[vApMat]),
	[dFechaIngreso] [date] NULL,
	[iEdad]  AS (datediff(year,[dFechaNac],getdate())),
	[iIdEmp] [int] NOT NULL,
	[iIdTipoEmpleado] [int] NULL,
	[vCorreo] [varchar](30) NULL,
	[fSalario] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[iIdFactura] [int] NOT NULL,
	[dFecha] [date] NOT NULL,
	[fSubtotal] [float] NOT NULL,
	[fIVA] [float] NOT NULL,
	[fTotal] [float] NOT NULL,
	[fEfectivo] [float] NULL,
	[fCambio] [float] NULL,
	[iIdCliente] [int] NOT NULL,
	[iIdFormaPago] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormaPago]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormaPago](
	[vFormaPago] [varchar](30) NULL,
	[iIdFormaPago] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdFormaPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredientes](
	[vNomIngred] [varchar](30) NULL,
	[vMarca] [varchar](20) NULL,
	[dVencimiento] [date] NULL,
	[iIdIngred] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdIngred] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[iCapacidad] [int] NULL,
	[iIdMesa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdMesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[iIdOrden] [int] NOT NULL,
	[iIdReservacion] [int] NULL,
	[iIdMesa] [int] NOT NULL,
	[iIdPlatillo] [int] NOT NULL,
	[iIdCombo] [int] NULL,
	[iIdEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidosProductos]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidosProductos](
	[iIdPedido] [int] NOT NULL,
	[dFechaPedido] [date] NOT NULL,
	[iIdIngrediente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platillo]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillo](
	[mPrecio] [money] NULL,
	[iIdPlatillo] [int] NOT NULL,
	[vNomPlatillo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdPlatillo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[vNomProv] [varchar](20) NULL,
	[iIdProv] [int] NOT NULL,
	[vNomContacto] [varchar](40) NULL,
	[vTelefono] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservaciones]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservaciones](
	[iIdMesa] [int] NULL,
	[iIdCliente] [int] NULL,
	[dFechaHora] [datetime] NULL,
	[iIdReserv] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdReserv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoEmpleado]    Script Date: 4/13/2019 2:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEmpleado](
	[iIdTipoEmpleado] [int] NOT NULL,
	[vTipoEmpleado] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdTipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [APaterno]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [APaterno] ON [dbo].[Clientes]
(
	[vApPat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [APaterno]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [APaterno] ON [dbo].[Empleados]
(
	[vApPat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FechaFactura]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [FechaFactura] ON [dbo].[Factura]
(
	[dFecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [FormaP]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [FormaP] ON [dbo].[FormaPago]
(
	[vFormaPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Ingrediente]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [Ingrediente] ON [dbo].[Ingredientes]
(
	[vNomIngred] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Capacidad]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [Capacidad] ON [dbo].[Mesa]
(
	[iCapacidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FechaPedido]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [FechaPedido] ON [dbo].[PedidosProductos]
(
	[dFechaPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Proveedor]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [Proveedor] ON [dbo].[Proveedores]
(
	[vNomProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Cliente]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [Cliente] ON [dbo].[Reservaciones]
(
	[iIdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TipoEmpleado]    Script Date: 4/13/2019 2:37:29 PM ******/
CREATE NONCLUSTERED INDEX [TipoEmpleado] ON [dbo].[TipoEmpleado]
(
	[vTipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [P_Restaurant] SET  READ_WRITE 
GO
