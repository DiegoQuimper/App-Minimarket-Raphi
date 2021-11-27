/********PROCEDIMIENTOS / INGRESAR,ELIMINAR,ACTUALIZAR********/

/**** INSERTAR DATOS EN KARDEX****/
create procedure sp_nuevo_kardex
@xID_Kardex char(4),
@xSaldo_Inicial money,
@xSaldo_Final money,
@xMonto_Venta money,
@xCodigo_Empleado char(6),
@xGanancia money,
@xDia int,
@xMes int,
@xAnio int
as
	insert into Kardex(ID_Kardex,
					   Saldo_Inicial,
					   Saldo_Final,
					   Monto_Venta,
					   Codigo_Empleado,
					   Ganancia,
					   Dia,
					   Mes,
					   Anio)
				values(@xID_Kardex,
					   @xSaldo_Inicial,
					   @xSaldo_Final,
					   @xMonto_Venta,
					   @xCodigo_Empleado,
					   @xGanancia,
					   @xDia,
					   @xMes,
					   @xAnio);
go

/**** ACTUALIZAR DATOS EN KARDEX****/
create procedure sp_actualizar_kardex
@xID_Kardex char(4),
@xSaldo_Inicial money,
@xSaldo_Final money,
@xMonto_Venta money,
@xCodigo_Empleado char(6),
@xGanancia money,
@xDia int,
@xMes int,
@xAnio int
as
	update Kardex set Saldo_Inicial=@xSaldo_Inicial,
					  Saldo_Final=@xSaldo_Final,
					  Monto_Venta=@xMonto_Venta,
					  Codigo_Empleado=@xCodigo_Empleado,
					  Ganancia=@xGanancia,
					  Dia=@xDia,
					  Mes=@xMes,
					  Anio=@xAnio
				where ID_Kardex=@xID_Kardex;
go

/**** ELIMINAR DATOS EN KARDEX****/
create procedure sp_eliminar_kardex
@xID_Kardex char(4)
as
	delete from Kardex where ID_Kardex=@xID_Kardex;
go

/**** INSERTAR DATOS EN EMPLEADO****/
create procedure sp_nuevo_empleado
@xCodigo_Empleado char(6),
@xSueldo money,
@xNombre_Pila varchar(15),
@xApellido_Paterno varchar(15),
@xApellido_Materno varchar(15),
@xFecha_Modificacion date,
@xAccion_Ejecutada varchar(60)
as
	insert into Empleado(Codigo_Empleado,
					     Sueldo,
						 Nombre_Pila,
						 Apellido_Paterno,
						 Apellido_Materno,
						 Fecha_Modificacion,
						 Accion_Ejecutada)
				  values(@xCodigo_Empleado,
				         @xSueldo,
						 @xNombre_Pila,
						 @xApellido_Paterno,
						 @xApellido_Materno,
						 @xFecha_Modificacion,
						 @xAccion_Ejecutada);
go

/**** ACTUALIZAR DATOS EN EMPLEADO****/
create procedure sp_actualizar_empleado
@xCodigo_Empleado char(6),
@xSueldo money,
@xNombre_Pila varchar(15),
@xApellido_Paterno varchar(15),
@xApellido_Materno varchar(15),
@xFecha_Modificacion date,
@xAccion_Ejecutada varchar(60)
as
	update Empleado set Sueldo=@xSueldo,
						Nombre_Pila=@xNombre_Pila,
						Apellido_Paterno=@xApellido_Paterno,
						Apellido_Materno=@xApellido_Materno,
						Fecha_Modificacion=@xFecha_Modificacion,
						Accion_Ejecutada=@xAccion_Ejecutada
				  where Codigo_Empleado=@xCodigo_Empleado;
go

/**** ELIMINAR DATOS EN EMPLEADO****/
create procedure sp_eliminar_empleado
@xCodigo_Empleado char(6)
as
	delete from Empleado where Codigo_Empleado=@xCodigo_Empleado;
go

/**** INSERTAR DATOS EN HOJA DE REGISTRO****/
create procedure sp_nuevo_hojaRegistro
@xID_HojaRegistro char(4),
@xSaldo_Final_Mensual int,
@xCodigo_Empleado char(6),
@xArea varchar(20),
@xTurno varchar(15),
@xDia int,
@xMes int,
@xAnio int,
@xID_Kardex char(4)
as
	insert into Hoja_de_Registro(ID_HojaRegistro,
								 Saldo_Final_Mensual,
								 Codigo_Empleado,
								 Area,
								 Turno,
								 Dia,
								 Mes,
								 Anio,
								 ID_Kardex)
						  values(@xID_HojaRegistro,
								 @xSaldo_Final_Mensual,
								 @xCodigo_Empleado,
								 @xArea,
								 @xTurno,
								 @xDia,
								 @xMes,
								 @xAnio,
								 @xID_Kardex);
go

/**** ACUTALIZAR DATOS EN HOJA DE REGISTRO****/
create procedure sp_actualizar_hojaRegistro
@xID_HojaRegistro char(4),
@xSaldo_Final_Mensual int,
@xCodigo_Empleado char(6),
@xArea varchar(20),
@xTurno varchar(15),
@xDia int,
@xMes int,
@xAnio int,
@xID_Kardex char(4)
as
	update Hoja_de_Registro set Saldo_Final_Mensual=@xSaldo_Final_Mensual,
								Codigo_Empleado=@xCodigo_Empleado,
								Area=@xArea,
								Turno=@xTurno,
								Dia=@xDia,
								Mes=@xMes,
								Anio=@xAnio,
								ID_Kardex=@xID_Kardex
						  where ID_HojaRegistro=@xID_HojaRegistro;
go

/**** ELIMINAR DATOS EN HOJA DE REGISTRO****/
create procedure sp_eliminar_hojaRegistro
@xID_HojaRegistro char(4)
as
	delete from Hoja_de_Registro where ID_HojaRegistro=@xID_HojaRegistro;
go

/**** INSERTAR DATOS EN PRODUCTO****/
create procedure sp_nuevo_producto
@xCodigo_Producto char(6),
@xNombre varchar(15),
@xDescripcion varchar(60),
@xCategoria varchar(15),
@xID_SubfamiliaProducto char(4),
@xDia int,
@xMes int,
@xAnio int,
@xPrecio money
as
	insert into Producto(Codigo_Producto,
					     Nombre,
					     Descripcion,
					     Categoria,
					     ID_SubfamiliaProducto,
					     Dia,
					     Mes,
					     Anio,
					     Precio)
				  values(@xCodigo_Producto,
					     @xNombre,
					     @xDescripcion,
					     @xCategoria,
					     @xID_SubfamiliaProducto,
					     @xDia,
					     @xMes,
					     @xAnio,
					     @xPrecio);
go

/**** ACTUALIZAR DATOS EN PRODUCTO****/
create procedure sp_actualizar_producto
@xCodigo_Producto char(6),
@xNombre varchar(15),
@xDescripcion varchar(60),
@xCategoria varchar(15),
@xID_SubfamiliaProducto char(4),
@xDia int,
@xMes int,
@xAnio int,
@xPrecio money
as
	update Producto set Nombre=@xNombre,
					    Descripcion=@xDescripcion,
					    Categoria=@xCategoria,
					    ID_SubfamiliaProducto=@xID_SubfamiliaProducto,
					    Dia=@xDia,
					    Mes=@xMes,
					    Anio=@xAnio,
					    Precio=@xPrecio
				where Codigo_Producto=@xCodigo_Producto;
go

/**** ELIMNAR DATOS EN PRODUCTO****/
create procedure sp_eliminar_producto
@xCodigo_Producto char(6)
as
	delete from Producto where Codigo_Producto=@xCodigo_Producto;
go

/**************PROCEDIMIENTOS / CONSULTAS****************/

/****Consulta 1****/

CREATE PROC consulta_saldos_inciales
as
SELECT k.Saldo_Inicial, op.Codigo_Producto  
FROM Kardex k RIGHT JOIN Operaciones_Producto op 
ON K.ID_Kardex = op.ID_Kardex 
WHERE k.Saldo_Inicial >= 700; 

/****Consulta 2****/
CREATE PROC consulta_monto_de_venta
as
SELECT K.ID_Kardex, K.Saldo_Inicial, K.Saldo_Final, K.Monto_Venta, K.Dia, K.Mes, K.Anio 

FROM Kardex K 

ORDER BY K.mes;


/****Consulta 3****/
CREATE PROC informacion_empleado
as
SELECT e.Codigo_Empleado, e. Nombre_Pila, hr.Saldo_Final_Mensual, hr. ID_HojaRegistro 

FROM Empleado e LEFT JOIN Hoja_de_Registro hr 

ON e.Codigo_Empleado = hr.Codigo_Empleado 

ORDER BY e.Nombre_Pila ASC;

/****Consulta 4****/
CREATE PROC Empleado_en_Hoja_de_Registro
AS
SELECT e.Nombre_Pila, e.Apellido_Paterno, H.Turno, H.Mes, H.Anio, H.ID_HojaRegistro 

FROM Agrega_Producto AP 

INNER JOIN Empleado e ON e.Codigo_Empleado = AP.Codigo_Empleado 

INNER JOIN Hoja_de_Registro H ON H.ID_HojaRegistro = AP.ID_HojaRegistro

/****Consulta 5****/
CREATE PROC Consulta_Retiro_y_Entradas
AS
SELECT p.Nombre, OP.Entrada, OP.Retiro, (OP.Entrada - OP.Retiro) Salida_de_Venta, p.Categoria, p.Precio, (p.Precio * OP.Retiro) Pérdida 
FROM Operaciones_Producto OP 
INNER JOIN Producto p ON p.Codigo_Producto = OP.Codigo_Producto 
WHERE OP.Retiro >= 5 


/****Consulta 6****/
CREATE PROC Consulta_Turno_Empleados
AS
SELECT A.[Codigo_Empleado], [Turno], B.[Codigo_Empleado] as Codigo_En_Hoja_Registro, concat([Nombre_Pila],' ',[Apellido_Paterno],' ',[Apellido_Materno]) as Nombres_y_Apellidos 
FROM Hoja_de_Registro A INNER JOIN Empleado B  
ON A.Codigo_Empleado = B.Codigo_Empleado 
ORDER BY Turno 

/****Consulta 7****/
CREATE PROC Consulta_Saldo_Inicial_Año
AS
SELECT Saldo_Inicial , Monto_Venta,Dia,Mes,Anio   
FROM Kardex 
WHERE Monto_Venta BETWEEN 70000 AND 90000 
ORDER BY Mes  

/****Consulta 8****/
CREATE PROC Consulta_Control_empleados
AS
SELECT e.Codigo_Empleado as 'Codigo Empleado', e.Nombre_Pila as 'Nombre', e.Apellido_Paterno as 'Apellido Paterno', COUNT(Registra.Codigo_Producto) AS 'Cantidad Productos' 
FROM Empleado as e INNER JOIN Registra ON e.Codigo_Empleado = Registra.Codigo_Empleado 
INNER JOIN Producto ON Registra.Codigo_Producto = Producto.Codigo_Producto 
GROUP BY e.Codigo_Empleado, e.Nombre_Pila, e.Apellido_Paterno 

/****Consulta 9****/
CREATE PROC Consulta_Ganancia
AS
SELECT K.Saldo_Inicial,O.Retiro,O.Entrada,(O.Entrada-O.Retiro) 
Productos_Resultantes,P.Precio,(P.Precio*O.Retiro)Saldo,(K.Saldo_Inicial-(P.Precio*O.Retiro))Ganancia 
from Operaciones_Producto O 
INNER JOIN Kardex K 
ON O.ID_Kardex= K.ID_Kardex 
INNER JOIN Producto P 
ON P.Codigo_Producto=O.Codigo_Producto 

/****Consulta 10****/
CREATE PROC Consulta_Empleado_Sueldo
AS
SELECT E.Nombre_Pila, E.Apellido_Paterno, E.Sueldo 
FROM Empleado E 
ORDER BY E.Nombre_Pila; 


/****TRIGGERS****/

/**** Trigger1 ****/
CREATE TRIGGER registrar_precio_producto 
ON Producto 
FOR INSERT 
AS 
IF (SELECT Precio FROM inserted) <= 0.00 
BEGIN 
PRINT 'No puede registrar un precio menor o igual a cero (0)' 
ROLLBACK 
END 
ELSE 
PRINT 'Precio registrado correctamente' 

/**** Trigger2 ****/
CREATE TRIGGER alerta_modificacion_ganancia 
ON Kardex 
FOR UPDATE 
AS 
IF UPDATE(Ganancia) 
BEGIN 
RAISERROR('¡La ganancia mensual en el Kardex no puede modificarse!', 10, 1) 
ROLLBACK TRANSACTION 
END  

/**** Trigger3 ****/
CREATE TRIGGER avisob_HojaRegistro 
ON Hoja_de_Registro 
INSTEAD OF INSERT,UPDATE,DELETE 
AS 
PRINT 'MODIFICANDO TABLA' 