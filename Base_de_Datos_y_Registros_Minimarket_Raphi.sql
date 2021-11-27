
CREATE DATABASE [Minimarket_Raphi]
GO


USE [Minimarket_Raphi]
GO
/****** Object:  Table [dbo].[Agrega_Producto]    Script Date: 17/11/2021 21:10:51 ******/

CREATE TABLE [dbo].[Agrega_Producto](
	[Codigo_Empleado] [char](6) NOT NULL,
	[ID_HojaRegistro] [char](4) NOT NULL,
 CONSTRAINT [PK__Agrega_P__A362C0D7D3C15015] PRIMARY KEY CLUSTERED 
(
	[Codigo_Empleado] ASC,
	[ID_HojaRegistro] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Empleado]    Script Date: 17/11/2021 21:10:51 ******/


CREATE TABLE [dbo].[Empleado](
	[Codigo_Empleado] [char](6) NOT NULL,
	[Sueldo] [money] NOT NULL,
	[Nombre_Pila] [varchar](15) NOT NULL,
	[Apellido_Paterno] [varchar](15) NOT NULL,
	[Apellido_Materno] [varchar](15) NOT NULL,
	[Fecha_Modificacion] [date] NULL,
	[Accion_Ejecutada] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo_Empleado] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Hoja_de_Registro]    Script Date: 17/11/2021 21:10:51 ******/


CREATE TABLE [dbo].[Hoja_de_Registro](
	[ID_HojaRegistro] [char](4) NOT NULL,
	[Saldo_Final_Mensual] [int] NULL,
	[Codigo_Empleado] [char](6) NOT NULL,
	[Area] [varchar](20) NULL,
	[Turno] [varchar](15) NULL,
	[Dia] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Anio] [int] NOT NULL,
	[ID_Kardex] [char](4) NOT NULL,
 CONSTRAINT [PK__Hoja_de___A2704E130115A886] PRIMARY KEY CLUSTERED 
(
	[ID_HojaRegistro] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[Kardex]    Script Date: 17/11/2021 21:10:51 ******/

CREATE TABLE [dbo].[Kardex](
	[ID_Kardex] [char](4) NOT NULL,
	[Saldo_Inicial] [money] NOT NULL,
	[Saldo_Final] [money] NULL,
	[Monto_Venta] [money] NOT NULL,
	[Codigo_Empleado] [char](6) NOT NULL,
	[Ganancia] [money] NULL,
	[Dia] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Anio] [int] NOT NULL,
 CONSTRAINT [PK__Kardex__3AE3E42FBD99BBFA] PRIMARY KEY CLUSTERED 
(
	[ID_Kardex] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Kardex_SV]    Script Date: 17/11/2021 21:10:51 ******/

CREATE TABLE [dbo].[Kardex_SV](
	[ID_Kardex] [char](4) NOT NULL,
	[Salida_Venta] [int] NOT NULL,
 CONSTRAINT [PK__Kardex_S__3AE3E42F6663ECC9] PRIMARY KEY CLUSTERED 
(
	[ID_Kardex] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operaciones_Producto]    Script Date: 17/11/2021 21:10:51 ******/


CREATE TABLE [dbo].[Operaciones_Producto](
	[Codigo_Producto] [char](6) NOT NULL,
	[ID_Kardex] [char](4) NOT NULL,
	[Retiro] [int] NOT NULL,
	[Entrada] [int] NOT NULL,
 CONSTRAINT [PK__Operacio__E5A387AAF4D789BC] PRIMARY KEY CLUSTERED 
(
	[Codigo_Producto] ASC,
	[ID_Kardex] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Producto]    Script Date: 17/11/2021 21:10:51 ******/

CREATE TABLE [dbo].[Producto](
	[Codigo_Producto] [char](6) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Descripcion] [varchar](60) NOT NULL,
	[Categoria] [varchar](15) NOT NULL,
	[ID_SubfamiliaProducto] [char](4) NOT NULL,
	[Dia] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Anio] [int] NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK__Producto__060DB9E84D48EBD7] PRIMARY KEY CLUSTERED 
(
	[Codigo_Producto] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Registra]    Script Date: 17/11/2021 21:10:51 ******/

CREATE TABLE [dbo].[Registra](
	[Codigo_Producto] [char](6) NOT NULL,
	[Codigo_Empleado] [char](6) NOT NULL,
	[Dia] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Anio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo_Producto] ASC,
	[Codigo_Empleado] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Registro_Producto]    Script Date: 17/11/2021 21:10:51 ******/


CREATE TABLE [dbo].[Registro_Producto](
	[Codigo_Producto] [char](6) NOT NULL,
	[ID_HojaRegistro] [char](4) NOT NULL,
 CONSTRAINT [PK__Registro__2C2ABD094ACAA39B] PRIMARY KEY CLUSTERED 
(
	[Codigo_Producto] ASC,
	[ID_HojaRegistro] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Subfamilia_Producto]    Script Date: 17/11/2021 21:10:51 ******/

CREATE TABLE [dbo].[Subfamilia_Producto](
	[ID_SubfamiliaProducto] [char](4) NOT NULL,
	[Subfamilia] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Subfamil__79823B4B7880DBF6] PRIMARY KEY CLUSTERED 
(
	[ID_SubfamiliaProducto] ASC,
	[Subfamilia] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[Turno]    Script Date: 17/11/2021 21:10:51 ******/

CREATE TABLE [dbo].[Turno](
	[Hora] [time](7) NOT NULL,
	[Tipo] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Hora] ASC
)WITH (PAD_INDEX = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hoja_de_Registro]  WITH CHECK ADD  CONSTRAINT [FK__Hoja_de_R__ID_Ka__403A8C7D] FOREIGN KEY([ID_Kardex])
REFERENCES [dbo].[Kardex] ([ID_Kardex])
GO
ALTER TABLE [dbo].[Hoja_de_Registro] CHECK CONSTRAINT [FK__Hoja_de_R__ID_Ka__403A8C7D]
GO




USE Minimarket_Raphi; 

INSERT INTO Kardex VALUES('K101', '800', 800, '80000.00', '605102', NULL, 29, 10, 2021); 

INSERT INTO Kardex VALUES('K102', '700', 600, '70000.00', '705702', NULL, 28, 10, 2021); 

INSERT INTO Kardex VALUES('K103', '600', 700, '60000.00', '805802', NULL, 29, 10, 2021); 

INSERT INTO Kardex VALUES('K104', '500', 760, '50000.00', '905902', NULL, 28, 10, 2021); 

INSERT INTO Kardex VALUES('K105', '900', 500, '90000.00', '335102', NULL, 29, 10, 2021); 

INSERT INTO Kardex VALUES('K106', '900', 630, '90000.00', '655102', NULL, 28, 10, 2021); 

INSERT INTO Kardex VALUES('K107', '900', 740, '90000.00', '675102', NULL, 29, 10, 2021); 

INSERT INTO Kardex VALUES('K108', '800', 700, '80000.00', '985102', NULL, 28, 10, 2021); 

INSERT INTO Kardex VALUES('K109', '800', 770, '80000.00', '555102', NULL, 29, 10, 2021); 

INSERT INTO Kardex VALUES('K110', '800', 800, '80000.00', '775102', NULL, 28, 10, 2021); 

  

INSERT INTO Hoja_de_Registro VALUES('H101', 800,'605102', 'Minimarket', 'Mañana', 29, 10, 2021, 'K101'); 

INSERT INTO Hoja_de_Registro VALUES('H102', 600,'725892', 'Minimarket', 'Tarde', 28, 10, 2021, 'K102'); 

INSERT INTO Hoja_de_Registro VALUES('H103', 700,'507812', 'Minimarket', 'Tarde', 29, 10, 2021, 'K103'); 

INSERT INTO Hoja_de_Registro VALUES('H104', 760,'493782', 'Minimarket', 'Tarde', 28, 10, 2021, 'K104'); 

INSERT INTO Hoja_de_Registro VALUES('H105', 500,'456789', 'Minimarket', 'Tarde', 29, 10, 2021, 'K105'); 

INSERT INTO Hoja_de_Registro VALUES('H106', 630,'517125', 'Minimarket', 'Tarde', 29, 10, 2021, 'K106'); 

INSERT INTO Hoja_de_Registro VALUES('H107', 740,'651645', 'Minimarket', 'Tarde', 29, 10, 2021, 'K107'); 

INSERT INTO Hoja_de_Registro VALUES('H108', 700,'343779', 'Minimarket', 'Tarde', 29, 10, 2021, 'K108'); 

INSERT INTO Hoja_de_Registro VALUES('H109', 770,'472454', 'Minimarket', 'Tarde', 29, 10, 2021, 'K109'); 

INSERT INTO Hoja_de_Registro VALUES('H110', 800,'363366', 'Minimarket', 'Tarde', 29, 10, 2021, 'K110'); 

  

INSERT INTO Empleado VALUES('605102', 710.00, 'JEMY', 'DE LA CRUZ', 'PEREZ', '2021/02/17', 'Ingreso de nuevo empleado'); 

INSERT INTO Empleado VALUES('725892', 710.00, 'GUSTAVO', 'MEZA', 'ORTIZ', '2021/02/18', 'Ingreso de nuevo empleado'); 

INSERT INTO Empleado VALUES('507812', 730.00, 'LESLY', 'SOTO', 'PEREZ', '2021/02/19', 'Ingreso de nuevo empleado'); 

INSERT INTO Empleado VALUES('493782', 710.00, 'ROCIO', 'APAZA', 'HUAYPUNA', '2021/02/20', 'Ingreso de nuevo empleado'); 

INSERT INTO Empleado VALUES('456789', 710.00, 'ESTEFANI', 'GALLEGOS', 'PORTILLO', '2021/02/21', 'Ingreso de nuevo empleado'); 

INSERT INTO Empleado VALUES('517125', 740.00, 'SARA', 'PAREDES', 'DE LA CRUZ', '2021/02/22', 'Ingreso de nuevo empleado'); 

INSERT INTO Empleado VALUES('651645', 740.00, 'LEON', 'CASAS', 'MEZA', '2021/02/23', 'Ingreso de nuevo empleado'); 

INSERT INTO Empleado VALUES('343779', 710.00, 'CARMEN', 'VARGAS', 'SOTO', '2021/02/24', 'Ingreso de nuevo empleado'); 

INSERT INTO Empleado VALUES('472454', 760.00, 'CHRIS', 'DELGADO', 'APAZA', '2021/02/25', 'Ingreso de nuevo empleado'); 

INSERT INTO Empleado VALUES('363366', 710.00, 'DOLORES', 'PRADO', 'GALLEGOS', '2021/02/26', 'Ingreso de nuevo empleado'); 

  

INSERT INTO Producto VALUES('4742', 'ACUARIUS', 'GRANADILLA 500 ML', 'NO PERECIBLE','H101', 29, 10, 2021, 2.00); 

INSERT INTO Producto VALUES('6841', 'ACUARIUS', 'NARANJA 500 ML', 'NO PERECIBLE', 'H102', 29, 10, 2021, 2.00); 

INSERT INTO Producto VALUES('4598', 'AGUA CIELO', 'SIN GAS 2.500 LT', 'NO PERECIBLE', 'H103', 29, 10, 2021, 2.90); 

INSERT INTO Producto VALUES('7824', 'AVAL', 'DESODORANTE XTREME CITRON 160ML', 'NO PERECIBLE', 'H104', 29, 10, 2021, 3.90); 

INSERT INTO Producto VALUES('8237', 'AVAL', 'JABON LIQUIDO ANTIBACTERIAL VAINILLA 400ML', 'NO PERECIBLE', 'H105', 28, 10, 2021, 4.50); 

INSERT INTO Producto VALUES('6212', 'BIMBO', 'PAN BLANCO FAMILIAR PYC 10 % MAS', 'NO PERECIBLE', 'H106', 28, 10, 2021, 7.50); 

INSERT INTO Producto VALUES('7493', 'BIMBO', 'PANETON BOLSA X 900 GR', 'NO PERECIBLE', 'H107', 28, 10, 2021, 15.00); 

INSERT INTO Producto VALUES('4952', 'BIMBO', 'PYC KEKE CHOCOLATE X 105G', 'NO PERECIBLE', 'H108', 28, 10, 2021, 7.50); 

INSERT INTO Producto VALUES('5169', 'YOGURT', 'LAIVE BIO FRESA 1 LITRO', 'NO PERECIBLE', 'H109', 28, 10, 2021, 9.80); 

INSERT INTO Producto VALUES('8004', 'CERVEZA', 'BARBARIAN AMERICAN IPA 174 BOTELLA 330ML', 'NO PERECIBLE', 'H110', 28, 10, 2021, 6.50); 

  

INSERT INTO Agrega_Producto VALUES('605102', 'H101');  

INSERT INTO Agrega_Producto VALUES('725892', 'H102');  

INSERT INTO Agrega_Producto VALUES('507812', 'H103');  

INSERT INTO Agrega_Producto VALUES('493782', 'H104');  

INSERT INTO Agrega_Producto VALUES('456789', 'H105');  

INSERT INTO Agrega_Producto VALUES('517125', 'H106');  

INSERT INTO Agrega_Producto VALUES('65164', 'H107');  

INSERT INTO Agrega_Producto VALUES('343779', 'H108');  

INSERT INTO Agrega_Producto VALUES('472454', 'H109');  

INSERT INTO Agrega_Producto VALUES('363366', 'H110');  

  

INSERT INTO Kardex_SV VALUES ('K101', 100); 

INSERT INTO Kardex_SV VALUES ('K102', 100); 

INSERT INTO Kardex_SV VALUES ('K103', 100); 

INSERT INTO Kardex_SV VALUES ('K104', 100); 

INSERT INTO Kardex_SV VALUES ('K105', 100); 

INSERT INTO Kardex_SV VALUES ('K106', 100); 

INSERT INTO Kardex_SV VALUES ('K107', 100); 

INSERT INTO Kardex_SV VALUES ('K108', 100); 

INSERT INTO Kardex_SV VALUES ('K109', 100); 

INSERT INTO Kardex_SV VALUES ('K110', 100); 

  

INSERT INTO Operaciones_Producto VALUES('4742', 'k101', 5, 20);  

INSERT INTO Operaciones_Producto VALUES('6841', 'k102', 4, 20);  

INSERT INTO Operaciones_Producto VALUES('4598', 'k103', 3, 20);  

INSERT INTO Operaciones_Producto VALUES('7824', 'k104', 2, 20);  

INSERT INTO Operaciones_Producto VALUES('8237', 'k105', 1, 20);  

INSERT INTO Operaciones_Producto VALUES('6212', 'k106', 0, 20);  

INSERT INTO Operaciones_Producto VALUES('7493', 'k107', 8, 20);  

INSERT INTO Operaciones_Producto VALUES('4952', 'k108', 2, 20);  

INSERT INTO Operaciones_Producto VALUES('5169', 'k109', 2, 20);  

INSERT INTO Operaciones_Producto VALUES('8004', 'k110', 3, 20); 

  

INSERT INTO Registra VALUES('4742', '605102', 29, 10, 2021);  

INSERT INTO Registra VALUES('6841', '725892', 28, 10, 2021);  

INSERT INTO Registra VALUES('4598', '507812', 29, 10, 2021);  

INSERT INTO Registra VALUES('7824', '493782', 28, 10, 2021);  

INSERT INTO Registra VALUES('8237', '456789', 29, 10, 2021);  

INSERT INTO Registra VALUES('6212', '517125', 28, 10, 2021);  

INSERT INTO Registra VALUES('7493', '65164', 29, 10, 2021);  

INSERT INTO Registra VALUES('4952', '343779', 28, 10, 2021);  

INSERT INTO Registra VALUES('5169', '472454', 29, 10, 2021);  

INSERT INTO Registra VALUES('8004', '363366', 28, 10, 2021);  

  

INSERT INTO Registro_Producto VALUES('4742', 'H101');  

INSERT INTO Registro_Producto VALUES('6841', 'H102');  

INSERT INTO Registro_Producto VALUES('4598', 'H103');  

INSERT INTO Registro_Producto VALUES('7824', 'H104');  

INSERT INTO Registro_Producto VALUES('8237', 'H105');  

INSERT INTO Registro_Producto VALUES('6212', 'H106');  

INSERT INTO Registro_Producto VALUES('7493', 'H107');  

INSERT INTO Registro_Producto VALUES('4952', 'H108');  

INSERT INTO Registro_Producto VALUES('5169', 'H109');  

INSERT INTO Registro_Producto VALUES('8004', 'H110');  

  

INSERT INTO Subfamilia_Producto VALUES('H101', 'BEBIDAS');  

INSERT INTO Subfamilia_Producto VALUES('H102', 'COMIDAS');  

INSERT INTO Subfamilia_Producto VALUES('H103', 'GASEOSAS');  

INSERT INTO Subfamilia_Producto VALUES('H104', 'HELADOS');  

INSERT INTO Subfamilia_Producto VALUES('H105', 'LIQUIDOS');  

INSERT INTO Subfamilia_Producto VALUES('H106', 'HELADOS');  

INSERT INTO Subfamilia_Producto VALUES('H107', 'COMIDAS');  

INSERT INTO Subfamilia_Producto VALUES('H108', 'HELADOS');  

INSERT INTO Subfamilia_Producto VALUES('H109', 'GASEOSAS');  

INSERT INTO Subfamilia_Producto VALUES('H110', 'BEBIDAS'); 

  

INSERT INTO Turno VALUES('09:00:00', 'Mañana');  

INSERT INTO Turno VALUES('10:00:00', 'Mañana');  

INSERT INTO Turno VALUES('11:00:00', 'Mañana');  

INSERT INTO Turno VALUES('12:00:00', 'Tarde');  

INSERT INTO Turno VALUES('13:00:00', 'Tarde');  

INSERT INTO Turno VALUES('14:00:00', 'Tarde');  

INSERT INTO Turno VALUES('15:00:00', 'Tarde');  

INSERT INTO Turno VALUES('16:00:00', 'Tarde');  

INSERT INTO Turno VALUES('17:00:00', 'Tarde');  

INSERT INTO Turno VALUES('18:00:00', 'Noche'); 






