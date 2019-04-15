use P_Restaurant 

create procedure SP1
as
select iIdOrden, iIdEmpleado, iIdMesa
from Orden O right join Empleados E on E.iIdEmp = O.iIdEmpleado
go

create procedure SP2
as
select *
from Orden O inner join Empleados E on E.iIdEmp = O.iIdEmpleado
go

create procedure SP3
as
select iIdOrden, iIdEmpleado, iIdMesa
from Orden O right join Empleados E on E.iIdEmp = O.iIdEmpleado
go

create procedure SP4
as
select iIdOrden, iIdEMpleado
from Orden O inner join Mesa M on M.iIdMesa = O.iIdMesa
go

create procedure SP5
as
select iIdPlatillo, vNombreCom, iIdMesa
from Orden O inner join Empleados M on M.iIdEmp = O.iIdEmpleado
go

create procedure SP6
as
select  iIdMesa, vNomPlatillo
from Orden O inner join Platillo P on P.iIdPlatillo = O.iIdPlatillo
go

create procedure SP7
as
select  vNombreCom, dFechaHora, iIdMesa
from Reservaciones R inner join Clientes C on R.iIdCliente = C.iIdCliente
go

create procedure SP8
as
select  vNombreCom, vTipoEmpleado
from TipoEmpleado T inner join Empleados E on T.iIdTipoEmpleado = E.iIdTipoEmpleado
go

create procedure SP9
as
select  vNombreCom, fTotal
from Factura F inner join Clientes E on F.iIdCliente = E.iIdCliente
go

create procedure SP10
as
select  vNomPlatillo, mPrecio, iIdMesa
from Orden O inner join Platillo P on O.iIdPlatillo = P.iIdPlatillo
go

-->trigger
create trigger ClientesRespaldo
 on Clientes
 for insert 
 as
 begin 
  insert into Clientes2 (iIdCliente, vNombre, vApPat, vApMat, vDomicilio, vTelefono, vNombreCom)
  values(A.iIdCliente, B.vNombre, C.vApPat, D.vApMat, E.vDomicilio, F.vTelefono, G.vNombreCom)
 end 

 CREATE TRIGGER Insertar ON Clientes
FOR INSERT
AS
DECLARE @user VARCHAR (20)
DECLARE @pass VARCHAR (20)
DECLARE @idcliente int
DECLARE @nombre varchar
DECLARE @paterno varchar
DECLARE @materno varchar
DECLARE @domicilio varchar
DECLARE @telefono int
DECLARE @ncompleto varchar

SELECT @idcliente = i.iIdCliente FROM inserted i;
SELECT @nombre = i.vNombre FROM inserted i;
SELECT @paterno = i.vApPat FROM inserted i;
SELECT @materno = i.vApMat FROM inserted i;
SELECT @domicilio = i.vDomicilio FROM inserted i;
SELECT @telefono = i.vTelefono FROM inserted i;
SELECT @ncompleto = i.vNombreCom FROM inserted i;

insert into Clientes2 (iIdCliente, vNombre, vApPat, vApMat, vDomicilio, vTelefono)
values(@idcliente, @nombre, @paterno, @materno, @domicilio, @telefono)

PRINT 'THE USER HAS BEEN ADDED SUCCESSFULLY'
GO

CREATE TRIGGER InsertarF ON Factura
FOR INSERT
AS

DECLARE @idfactura int
DECLARE @fecha date
DECLARE @subtotal float
DECLARE @iva float
DECLARE @total float
DECLARE @efectivo float
DECLARE @cambio float
DECLARE @idcliente int
DECLARE @idformapago int

SELECT @idfactura = i.iIdFactura FROM inserted i;
SELECT @fecha = i.dFecha FROM inserted i;
SELECT @subtotal = i.fSubtotal FROM inserted i;
SELECT @iva = i.fSubtotal FROM inserted i;
SELECT @total = i.fTotal FROM inserted i;
SELECT @efectivo = i.fEfectivo FROM inserted i;
SELECT @cambio = i.fCambio FROM inserted i;
SELECT @idcliente = i.iIdCliente FROM inserted i;
SELECT @idformapago = i.iIdFormaPago FROM inserted i;

insert into Factura2  (iIdFactura, dFecha, fSubtotal, fIVA, fTotal, fEfectivo, fCambio, iIdCliente, iIdFormaPago)
values(@idfactura, @fecha, @subtotal, @iva, @total, @efectivo, @cambio, @idcliente, @idformapago)

PRINT 'THE USER HAS BEEN ADDED SUCCESSFULLY'
GO


 --> function
 create function fnTotal(@v1 int, @v2 int)
 returns int 
 as
 begin
	RETURN @V1 + @V2
 end
 --> dinamic query
 DECLARE @QUERY AS NVARCHAR(4000)
SET @QUERY = ''
SET @QUERY = @QUERY +  ' SELECT * '
SET @QUERY = @QUERY +  ' FROM Empleados AS EMP  '
SET @QUERY = @QUERY +  '  INNER JOIN iEdad AS E ON '
SET @QUERY = @QUERY +  '  EMP.iIdEmp = E.iIdEmp '
SET @QUERY = @QUERY +  ' WHERE E.iEdad < 19 '

EXEC SP_EXECUTESQL @QUERY 

