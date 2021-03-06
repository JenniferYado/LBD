USE [P_Restaurant]
GO
/****** Object:  Trigger [TG_Emp]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TRIGGER [dbo].[TG_Emp]
GO
/****** Object:  Index [TipoEmpleado]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [TipoEmpleado] ON [dbo].[TipoEmpleado]
GO
/****** Object:  Index [Cliente]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [Cliente] ON [dbo].[Reservaciones]
GO
/****** Object:  Index [Proveedor]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [Proveedor] ON [dbo].[Proveedores]
GO
/****** Object:  Index [FechaPedido]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [FechaPedido] ON [dbo].[PedidosProductos]
GO
/****** Object:  Index [Capacidad]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [Capacidad] ON [dbo].[Mesa]
GO
/****** Object:  Index [Ingrediente]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [Ingrediente] ON [dbo].[Ingredientes]
GO
/****** Object:  Index [FormaP]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [FormaP] ON [dbo].[FormaPago]
GO
/****** Object:  Index [FechaFactura]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [FechaFactura] ON [dbo].[Factura]
GO
/****** Object:  Index [APaterno]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [APaterno] ON [dbo].[Empleados]
GO
/****** Object:  Index [APaterno]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP INDEX [APaterno] ON [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[TipoEmpleado]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[TipoEmpleado]
GO
/****** Object:  Table [dbo].[Reservaciones]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Reservaciones]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Platillo]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Platillo]
GO
/****** Object:  Table [dbo].[PedidosProductos]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[PedidosProductos]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Orden]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Mesa]
GO
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Ingredientes]
GO
/****** Object:  Table [dbo].[FormaPago]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[FormaPago]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Factura]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Combo]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[AcumEmp]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP TABLE [dbo].[AcumEmp]
GO
USE [master]
GO
/****** Object:  Database [P_Restaurant]    Script Date: 4/3/2019 2:51:01 PM ******/
DROP DATABASE [P_Restaurant]
GO
/****** Object:  Database [P_Restaurant]    Script Date: 4/3/2019 2:51:01 PM ******/
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
/****** Object:  Table [dbo].[AcumEmp]    Script Date: 4/3/2019 2:51:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcumEmp](
	[TotEmp] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 4/3/2019 2:51:02 PM ******/
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
/****** Object:  Table [dbo].[Combo]    Script Date: 4/3/2019 2:51:03 PM ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 4/3/2019 2:51:03 PM ******/
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
/****** Object:  Table [dbo].[Factura]    Script Date: 4/3/2019 2:51:03 PM ******/
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
/****** Object:  Table [dbo].[FormaPago]    Script Date: 4/3/2019 2:51:03 PM ******/
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
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 4/3/2019 2:51:03 PM ******/
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
/****** Object:  Table [dbo].[Mesa]    Script Date: 4/3/2019 2:51:03 PM ******/
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
/****** Object:  Table [dbo].[Orden]    Script Date: 4/3/2019 2:51:03 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[iIdOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidosProductos]    Script Date: 4/3/2019 2:51:03 PM ******/
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
/****** Object:  Table [dbo].[Platillo]    Script Date: 4/3/2019 2:51:04 PM ******/
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 4/3/2019 2:51:04 PM ******/
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
/****** Object:  Table [dbo].[Reservaciones]    Script Date: 4/3/2019 2:51:04 PM ******/
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
/****** Object:  Table [dbo].[TipoEmpleado]    Script Date: 4/3/2019 2:51:04 PM ******/
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
INSERT [dbo].[AcumEmp] ([TotEmp]) VALUES (1)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Alan Oswaldo', N'Ibarra', N'Perales', N'Huniala, Apodaca', N'8156898541', 1)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Jesus Alejandro', N'Ibarra', N'Yado', N'Huniala, Apodaca', N'8156878561', 2)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Gilberto', N'Garza', N'Monrreal', N'Real de Palmas, Zuazua', N'84845962531', 3)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Mario Yair', N'Jimenez', N'Diaz', N'Real de Palmas, Zuazua', N'812015698523', 4)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Hector Jose', N'De La Garza', N'Colunga', N'Real de Palmas, Zuazua', N'8120187452', 5)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Moises', N'Garza', N'Monrreal', N'Real de Palmas, Zuazua', N'8156548123', 6)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Bryan', N'Rodriguez', N'Escalante', N'La Concha, Cienega de Flores', N'8111234875', 7)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Karla Lizbeth', N'Arrambide', N'Martinez', N'Carrizalejo, Zuazua', N'8147778541', 8)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Karen Yaneth', N'Baez', N'Rodriguez', N'Bosques, Salinas Victoria', N'8895475485', 9)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Avril Ramona', N'Lavigne', N'Loshaw', N'Hunala, Apodaca', N'8186458641', 10)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Pedro Antonio', N'Martinez', N'Gonzalez', N'Los Bosques, Apodaca', N'8156128541', 11)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Alberto', N'Almendarez', N'Aldape', N'Huniala, Apodaca', N'8154589651', 12)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Irma Isela', N'Perez', N'Yado', N'Villas del Arco, El Carmen', N'8110898752', 13)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Alejandro', N'Gomez', N'Suarez', N'Agua Fria, Apodaca', N'8565698541', 14)
INSERT [dbo].[Clientes] ([vNombre], [vApPat], [vApMat], [vDomicilio], [vTelefono], [iIdCliente]) VALUES (N'Pablo', N'Gutierrez', N'Perales', N'Almacentro, Apodaca', N'8221898541', 15)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Jennifer Guadalupe', N'Gonzalez', N'Yado', CAST(N'1999-06-28' AS Date), N'Real del Sol, Cienega de Flores', N'8110737617', N'A', CAST(N'2017-12-27' AS Date), 1, 1, N'jennifer.gyado@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Yamilet Paulina', N'Hernandez', N'Rosales', CAST(N'2001-03-31' AS Date), N'Real de Palmas, Zuazua', N'8120192801', N'A', CAST(N'2017-12-27' AS Date), 2, 1, N'yamilet.hdz@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Eedi Alexander', N'Gonzalez', N'Calderon', CAST(N'1998-12-08' AS Date), N'Real del Sol, Cienega de Flores', N'8110896521', N'A', CAST(N'2017-12-27' AS Date), 3, 1, N'eedi.calderon@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Roberto Carlos', N'Puente', N'Rojas', CAST(N'1997-06-05' AS Date), N'Villas de Alcala, Cienega de Flores', N'8114659617', N'A', CAST(N'2017-12-27' AS Date), 4, 1, N'roberto.puente@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Jose Tadeo', N'Hernandez', N'Covarrubias', CAST(N'1998-10-26' AS Date), N'Villas de Alcala, Cienega de Flores', N'8110788987', N'A', CAST(N'2017-12-27' AS Date), 5, 1, N'tadeo.hernandez@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Kleiver', N'Gonzalez', N'Ramirez', CAST(N'1972-07-02' AS Date), N'Real del Sol, Cienega de Flores', N'8110731235', N'A', CAST(N'2017-12-27' AS Date), 6, 1, N'kleiver.gonzalezo@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Cristopher Ulises', N'Avila', N'Perez', CAST(N'1999-06-27' AS Date), N'Villas del Arco, El Carmen', N'8178957617', N'A', CAST(N'2017-12-27' AS Date), 7, 1, N'cristopher.avilao@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Luis Gerardo', N'Castillo', N'Flores', CAST(N'1995-02-12' AS Date), N'Carrizalejo, Cienega de Flores', N'8163259852', N'A', CAST(N'2018-10-10' AS Date), 8, 1, N'luis.castillo@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Jose Santiago', N'Vazquez', N'Garcia', CAST(N'1998-05-13' AS Date), N'Real del Sol, Cienega de Flores', N'8780737677', N'A', CAST(N'2018-09-25' AS Date), 9, 1, N'jose.vazquez@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Marcos', N'Flores', N'Briones', CAST(N'1998-02-10' AS Date), N'Real del Sol, Cienega de Flores', N'8110897617', N'A', CAST(N'2017-12-27' AS Date), 10, 1, N'marcos.flores@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Brenda Ivette', N'Gonzalez', N'Dominguez', CAST(N'2000-09-15' AS Date), N'Real de Palmas, Zuazua', N'3330737617', N'A', CAST(N'2017-12-27' AS Date), 11, 1, N'brenda.gonzalez@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Gerardo', N'Solano', N'Martinez', CAST(N'1997-04-15' AS Date), N'Real del Sol, Cienega de Flores', N'7810852617', N'A', CAST(N'2018-01-28' AS Date), 12, 1, N'gerardo.solano@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Ricardo', N'Martinez', N'Sanchez', CAST(N'1998-08-14' AS Date), N'Real del Sol, Cienega de Flores', N'8789737617', N'A', CAST(N'2017-12-27' AS Date), 13, 1, N'ricardo.martinez@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Raul', N'Calderon', N'Marquez', CAST(N'1992-07-18' AS Date), N'Real del Sol, Cienega de Flores', N'8117894517', N'A', CAST(N'2017-12-27' AS Date), 14, 1, N'raul.calderon@gmail.com', 500)
INSERT [dbo].[Empleados] ([vNombre], [vApPat], [vApMat], [dFechaNac], [vDomicilio], [vTelefono], [vStatus], [dFechaIngreso], [iIdEmp], [iIdTipoEmpleado], [vCorreo], [fSalario]) VALUES (N'Hellen Sarahi', N'Coronado', N'Ibarra', CAST(N'1997-06-28' AS Date), N'Carrizalejo, Cienega de Flores', N'6897854785', N'A', CAST(N'2017-12-27' AS Date), 15, 1, N'hellen.coronado@gmail.com', 500)
INSERT [dbo].[FormaPago] ([vFormaPago], [iIdFormaPago]) VALUES (N'Efectivo', 1)
INSERT [dbo].[FormaPago] ([vFormaPago], [iIdFormaPago]) VALUES (N'Tarjeta', 2)
INSERT [dbo].[Ingredientes] ([vNomIngred], [vMarca], [dVencimiento], [iIdIngred]) VALUES (N'Aceite de oliva', N'Pigot', CAST(N'2020-06-28' AS Date), 1)
INSERT [dbo].[Ingredientes] ([vNomIngred], [vMarca], [dVencimiento], [iIdIngred]) VALUES (N'Queso', N'Comercial Montesec', CAST(N'2019-06-28' AS Date), 2)
INSERT [dbo].[Ingredientes] ([vNomIngred], [vMarca], [dVencimiento], [iIdIngred]) VALUES (N'Pollo', N'Mercasur', CAST(N'2020-06-28' AS Date), 3)
INSERT [dbo].[Ingredientes] ([vNomIngred], [vMarca], [dVencimiento], [iIdIngred]) VALUES (N'Carne', N'Grup Vinas', CAST(N'2020-06-28' AS Date), 4)
INSERT [dbo].[Ingredientes] ([vNomIngred], [vMarca], [dVencimiento], [iIdIngred]) VALUES (N'Camarones', N'La Marsala', CAST(N'2019-06-28' AS Date), 5)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (2, 21)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (2, 22)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (2, 23)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (2, 24)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (2, 25)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (3, 26)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (3, 27)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (3, 28)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (3, 29)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (3, 30)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (4, 12)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (4, 13)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (4, 14)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (4, 15)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (4, 16)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 1)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 2)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 3)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 4)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 5)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 6)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 7)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 8)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 9)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 10)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 11)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 17)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 18)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 19)
INSERT [dbo].[Mesa] ([iCapacidad], [iIdMesa]) VALUES (6, 20)
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (80.0000, 1, N'Tacos de cochinita pibil')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (80.0000, 2, N'Tacos de suadero')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (15.0000, 3, N'Tamales')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (75.0000, 4, N'Pozole')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (85.0000, 5, N'Tacos de sesos')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (60.0000, 6, N'Torta ahogada')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (85.0000, 7, N'Tacos de mariscos')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (90.0000, 8, N'Pipián verde y rojo')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (85.0000, 9, N'Mole poblano con pollo')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (75.0000, 10, N'Enchiladas potosinas')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (75.0000, 11, N'Enchiladas de mole poblano')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (60.0000, 12, N'Chilaquiles verdes o rojos')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (75.0000, 13, N'Torta de chilaquiles')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (15.0000, 14, N'Chiles en nogada')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (15.0000, 15, N'Chiles rellenos')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (90.0000, 16, N'Itacates')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (40.0000, 17, N'Tacos dorados')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (60.0000, 18, N'Tortas de lechón')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (40.0000, 19, N'Cemita')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (50.0000, 20, N'Tacos de canasta')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (60.0000, 21, N'Barbacoa')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (50.0000, 22, N'Machaca')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (15.0000, 23, N'Quesadillas')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (15.0000, 24, N'Pambazos')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (25.0000, 25, N'Burritos')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (20.0000, 26, N'Huarache')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (50.0000, 27, N'Huevos rancheros')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (55.0000, 28, N'Mole negro')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (60.0000, 29, N'Pirria')
INSERT [dbo].[Platillo] ([mPrecio], [iIdPlatillo], [vNomPlatillo]) VALUES (15.0000, 30, N'Pambazos')
INSERT [dbo].[Proveedores] ([vNomProv], [iIdProv], [vNomContacto], [vTelefono]) VALUES (N'La Marsala', 1, N'Alberto Rodriguez', N'22-293-24-40')
INSERT [dbo].[Proveedores] ([vNomProv], [iIdProv], [vNomContacto], [vTelefono]) VALUES (N'Mercasur', 2, N'Alejandro Garza', N'33-31-41-68')
INSERT [dbo].[Proveedores] ([vNomProv], [iIdProv], [vNomContacto], [vTelefono]) VALUES (N'Grup Vinas', 3, N'Ernesto Jimenez', N'22-544-64')
INSERT [dbo].[Proveedores] ([vNomProv], [iIdProv], [vNomContacto], [vTelefono]) VALUES (N'Comercial Montesec', 4, N'Luis Monrreal', N'22-293-24-39')
INSERT [dbo].[Proveedores] ([vNomProv], [iIdProv], [vNomContacto], [vTelefono]) VALUES (N'Pigot', 5, N'Alexis Gonzalez', N'33-36-23-16-10')
SET ANSI_PADDING ON
GO
/****** Object:  Index [APaterno]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [APaterno] ON [dbo].[Clientes]
(
	[vApPat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [APaterno]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [APaterno] ON [dbo].[Empleados]
(
	[vApPat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FechaFactura]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [FechaFactura] ON [dbo].[Factura]
(
	[dFecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [FormaP]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [FormaP] ON [dbo].[FormaPago]
(
	[vFormaPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Ingrediente]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [Ingrediente] ON [dbo].[Ingredientes]
(
	[vNomIngred] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Capacidad]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [Capacidad] ON [dbo].[Mesa]
(
	[iCapacidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FechaPedido]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [FechaPedido] ON [dbo].[PedidosProductos]
(
	[dFechaPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Proveedor]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [Proveedor] ON [dbo].[Proveedores]
(
	[vNomProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Cliente]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [Cliente] ON [dbo].[Reservaciones]
(
	[iIdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TipoEmpleado]    Script Date: 4/3/2019 2:51:04 PM ******/
CREATE NONCLUSTERED INDEX [TipoEmpleado] ON [dbo].[TipoEmpleado]
(
	[vTipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Trigger [dbo].[TG_Emp]    Script Date: 4/3/2019 2:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[TG_Emp] on  [dbo].[Empleados] for insert
as
UPDATE AcumEmp 
set TotEmp = TotEmp + 1
GO
ALTER TABLE [dbo].[Empleados] ENABLE TRIGGER [TG_Emp]
GO
USE [master]
GO
ALTER DATABASE [P_Restaurant] SET  READ_WRITE 
GO
