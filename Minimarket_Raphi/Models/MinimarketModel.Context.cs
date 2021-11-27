﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Minimarket_Raphi.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class Minimarket_RaphiEntities : DbContext
    {
        public Minimarket_RaphiEntities()
            : base("name=Minimarket_RaphiEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Agrega_Producto> Agrega_Producto { get; set; }
        public virtual DbSet<Empleado> Empleado { get; set; }
        public virtual DbSet<Hoja_de_Registro> Hoja_de_Registro { get; set; }
        public virtual DbSet<Kardex> Kardex { get; set; }
        public virtual DbSet<Kardex_SV> Kardex_SV { get; set; }
        public virtual DbSet<Operaciones_Producto> Operaciones_Producto { get; set; }
        public virtual DbSet<Producto> Producto { get; set; }
        public virtual DbSet<Registra> Registra { get; set; }
        public virtual DbSet<Registro_Producto> Registro_Producto { get; set; }
        public virtual DbSet<Subfamilia_Producto> Subfamilia_Producto { get; set; }
        public virtual DbSet<Turno> Turno { get; set; }
    
        public virtual ObjectResult<Consulta_Control_empleados_Result> Consulta_Control_empleados()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Consulta_Control_empleados_Result>("Consulta_Control_empleados");
        }
    
        public virtual ObjectResult<Consulta_Empleado_Sueldo_Result> Consulta_Empleado_Sueldo()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Consulta_Empleado_Sueldo_Result>("Consulta_Empleado_Sueldo");
        }
    
        public virtual ObjectResult<Consulta_Ganancia_Result> Consulta_Ganancia()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Consulta_Ganancia_Result>("Consulta_Ganancia");
        }
    
        public virtual ObjectResult<consulta_monto_de_venta_Result> consulta_monto_de_venta()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<consulta_monto_de_venta_Result>("consulta_monto_de_venta");
        }
    
        public virtual ObjectResult<Consulta_Retiro_y_Entradas_Result> Consulta_Retiro_y_Entradas()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Consulta_Retiro_y_Entradas_Result>("Consulta_Retiro_y_Entradas");
        }
    
        public virtual ObjectResult<Consulta_Saldo_Inicial_Año_Result> Consulta_Saldo_Inicial_Año()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Consulta_Saldo_Inicial_Año_Result>("Consulta_Saldo_Inicial_Año");
        }
    
        public virtual ObjectResult<consulta_saldos_inciales_Result> consulta_saldos_inciales()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<consulta_saldos_inciales_Result>("consulta_saldos_inciales");
        }
    
        public virtual ObjectResult<Consulta_Turno_Empleados_Result> Consulta_Turno_Empleados()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Consulta_Turno_Empleados_Result>("Consulta_Turno_Empleados");
        }
    
        public virtual ObjectResult<Empleado_en_Hoja_de_Registro_Result> Empleado_en_Hoja_de_Registro()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Empleado_en_Hoja_de_Registro_Result>("Empleado_en_Hoja_de_Registro");
        }
    
        public virtual ObjectResult<informacion_empleado_Result> informacion_empleado()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<informacion_empleado_Result>("informacion_empleado");
        }
    
        public virtual int sp_actualizar_empleado(string xCodigo_Empleado, Nullable<decimal> xSueldo, string xNombre_Pila, string xApellido_Paterno, string xApellido_Materno, Nullable<System.DateTime> xFecha_Modificacion, string xAccion_Ejecutada)
        {
            var xCodigo_EmpleadoParameter = xCodigo_Empleado != null ?
                new ObjectParameter("xCodigo_Empleado", xCodigo_Empleado) :
                new ObjectParameter("xCodigo_Empleado", typeof(string));
    
            var xSueldoParameter = xSueldo.HasValue ?
                new ObjectParameter("xSueldo", xSueldo) :
                new ObjectParameter("xSueldo", typeof(decimal));
    
            var xNombre_PilaParameter = xNombre_Pila != null ?
                new ObjectParameter("xNombre_Pila", xNombre_Pila) :
                new ObjectParameter("xNombre_Pila", typeof(string));
    
            var xApellido_PaternoParameter = xApellido_Paterno != null ?
                new ObjectParameter("xApellido_Paterno", xApellido_Paterno) :
                new ObjectParameter("xApellido_Paterno", typeof(string));
    
            var xApellido_MaternoParameter = xApellido_Materno != null ?
                new ObjectParameter("xApellido_Materno", xApellido_Materno) :
                new ObjectParameter("xApellido_Materno", typeof(string));
    
            var xFecha_ModificacionParameter = xFecha_Modificacion.HasValue ?
                new ObjectParameter("xFecha_Modificacion", xFecha_Modificacion) :
                new ObjectParameter("xFecha_Modificacion", typeof(System.DateTime));
    
            var xAccion_EjecutadaParameter = xAccion_Ejecutada != null ?
                new ObjectParameter("xAccion_Ejecutada", xAccion_Ejecutada) :
                new ObjectParameter("xAccion_Ejecutada", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_actualizar_empleado", xCodigo_EmpleadoParameter, xSueldoParameter, xNombre_PilaParameter, xApellido_PaternoParameter, xApellido_MaternoParameter, xFecha_ModificacionParameter, xAccion_EjecutadaParameter);
        }
    
        public virtual int sp_actualizar_hojaRegistro(string xID_HojaRegistro, Nullable<int> xSaldo_Final_Mensual, string xCodigo_Empleado, string xArea, string xTurno, Nullable<int> xDia, Nullable<int> xMes, Nullable<int> xAnio, string xID_Kardex)
        {
            var xID_HojaRegistroParameter = xID_HojaRegistro != null ?
                new ObjectParameter("xID_HojaRegistro", xID_HojaRegistro) :
                new ObjectParameter("xID_HojaRegistro", typeof(string));
    
            var xSaldo_Final_MensualParameter = xSaldo_Final_Mensual.HasValue ?
                new ObjectParameter("xSaldo_Final_Mensual", xSaldo_Final_Mensual) :
                new ObjectParameter("xSaldo_Final_Mensual", typeof(int));
    
            var xCodigo_EmpleadoParameter = xCodigo_Empleado != null ?
                new ObjectParameter("xCodigo_Empleado", xCodigo_Empleado) :
                new ObjectParameter("xCodigo_Empleado", typeof(string));
    
            var xAreaParameter = xArea != null ?
                new ObjectParameter("xArea", xArea) :
                new ObjectParameter("xArea", typeof(string));
    
            var xTurnoParameter = xTurno != null ?
                new ObjectParameter("xTurno", xTurno) :
                new ObjectParameter("xTurno", typeof(string));
    
            var xDiaParameter = xDia.HasValue ?
                new ObjectParameter("xDia", xDia) :
                new ObjectParameter("xDia", typeof(int));
    
            var xMesParameter = xMes.HasValue ?
                new ObjectParameter("xMes", xMes) :
                new ObjectParameter("xMes", typeof(int));
    
            var xAnioParameter = xAnio.HasValue ?
                new ObjectParameter("xAnio", xAnio) :
                new ObjectParameter("xAnio", typeof(int));
    
            var xID_KardexParameter = xID_Kardex != null ?
                new ObjectParameter("xID_Kardex", xID_Kardex) :
                new ObjectParameter("xID_Kardex", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_actualizar_hojaRegistro", xID_HojaRegistroParameter, xSaldo_Final_MensualParameter, xCodigo_EmpleadoParameter, xAreaParameter, xTurnoParameter, xDiaParameter, xMesParameter, xAnioParameter, xID_KardexParameter);
        }
    
        public virtual int sp_actualizar_kardex(string xID_Kardex, Nullable<decimal> xSaldo_Inicial, Nullable<decimal> xSaldo_Final, Nullable<decimal> xMonto_Venta, string xCodigo_Empleado, Nullable<decimal> xGanancia, Nullable<int> xDia, Nullable<int> xMes, Nullable<int> xAnio)
        {
            var xID_KardexParameter = xID_Kardex != null ?
                new ObjectParameter("xID_Kardex", xID_Kardex) :
                new ObjectParameter("xID_Kardex", typeof(string));
    
            var xSaldo_InicialParameter = xSaldo_Inicial.HasValue ?
                new ObjectParameter("xSaldo_Inicial", xSaldo_Inicial) :
                new ObjectParameter("xSaldo_Inicial", typeof(decimal));
    
            var xSaldo_FinalParameter = xSaldo_Final.HasValue ?
                new ObjectParameter("xSaldo_Final", xSaldo_Final) :
                new ObjectParameter("xSaldo_Final", typeof(decimal));
    
            var xMonto_VentaParameter = xMonto_Venta.HasValue ?
                new ObjectParameter("xMonto_Venta", xMonto_Venta) :
                new ObjectParameter("xMonto_Venta", typeof(decimal));
    
            var xCodigo_EmpleadoParameter = xCodigo_Empleado != null ?
                new ObjectParameter("xCodigo_Empleado", xCodigo_Empleado) :
                new ObjectParameter("xCodigo_Empleado", typeof(string));
    
            var xGananciaParameter = xGanancia.HasValue ?
                new ObjectParameter("xGanancia", xGanancia) :
                new ObjectParameter("xGanancia", typeof(decimal));
    
            var xDiaParameter = xDia.HasValue ?
                new ObjectParameter("xDia", xDia) :
                new ObjectParameter("xDia", typeof(int));
    
            var xMesParameter = xMes.HasValue ?
                new ObjectParameter("xMes", xMes) :
                new ObjectParameter("xMes", typeof(int));
    
            var xAnioParameter = xAnio.HasValue ?
                new ObjectParameter("xAnio", xAnio) :
                new ObjectParameter("xAnio", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_actualizar_kardex", xID_KardexParameter, xSaldo_InicialParameter, xSaldo_FinalParameter, xMonto_VentaParameter, xCodigo_EmpleadoParameter, xGananciaParameter, xDiaParameter, xMesParameter, xAnioParameter);
        }
    
        public virtual int sp_actualizar_producto(string xCodigo_Producto, string xNombre, string xDescripcion, string xCategoria, string xID_SubfamiliaProducto, Nullable<int> xDia, Nullable<int> xMes, Nullable<int> xAnio, Nullable<decimal> xPrecio)
        {
            var xCodigo_ProductoParameter = xCodigo_Producto != null ?
                new ObjectParameter("xCodigo_Producto", xCodigo_Producto) :
                new ObjectParameter("xCodigo_Producto", typeof(string));
    
            var xNombreParameter = xNombre != null ?
                new ObjectParameter("xNombre", xNombre) :
                new ObjectParameter("xNombre", typeof(string));
    
            var xDescripcionParameter = xDescripcion != null ?
                new ObjectParameter("xDescripcion", xDescripcion) :
                new ObjectParameter("xDescripcion", typeof(string));
    
            var xCategoriaParameter = xCategoria != null ?
                new ObjectParameter("xCategoria", xCategoria) :
                new ObjectParameter("xCategoria", typeof(string));
    
            var xID_SubfamiliaProductoParameter = xID_SubfamiliaProducto != null ?
                new ObjectParameter("xID_SubfamiliaProducto", xID_SubfamiliaProducto) :
                new ObjectParameter("xID_SubfamiliaProducto", typeof(string));
    
            var xDiaParameter = xDia.HasValue ?
                new ObjectParameter("xDia", xDia) :
                new ObjectParameter("xDia", typeof(int));
    
            var xMesParameter = xMes.HasValue ?
                new ObjectParameter("xMes", xMes) :
                new ObjectParameter("xMes", typeof(int));
    
            var xAnioParameter = xAnio.HasValue ?
                new ObjectParameter("xAnio", xAnio) :
                new ObjectParameter("xAnio", typeof(int));
    
            var xPrecioParameter = xPrecio.HasValue ?
                new ObjectParameter("xPrecio", xPrecio) :
                new ObjectParameter("xPrecio", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_actualizar_producto", xCodigo_ProductoParameter, xNombreParameter, xDescripcionParameter, xCategoriaParameter, xID_SubfamiliaProductoParameter, xDiaParameter, xMesParameter, xAnioParameter, xPrecioParameter);
        }
    
        public virtual int sp_eliminar_empleado(string xCodigo_Empleado)
        {
            var xCodigo_EmpleadoParameter = xCodigo_Empleado != null ?
                new ObjectParameter("xCodigo_Empleado", xCodigo_Empleado) :
                new ObjectParameter("xCodigo_Empleado", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_eliminar_empleado", xCodigo_EmpleadoParameter);
        }
    
        public virtual int sp_eliminar_hojaRegistro(string xID_HojaRegistro)
        {
            var xID_HojaRegistroParameter = xID_HojaRegistro != null ?
                new ObjectParameter("xID_HojaRegistro", xID_HojaRegistro) :
                new ObjectParameter("xID_HojaRegistro", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_eliminar_hojaRegistro", xID_HojaRegistroParameter);
        }
    
        public virtual int sp_eliminar_kardex(string xID_Kardex)
        {
            var xID_KardexParameter = xID_Kardex != null ?
                new ObjectParameter("xID_Kardex", xID_Kardex) :
                new ObjectParameter("xID_Kardex", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_eliminar_kardex", xID_KardexParameter);
        }
    
        public virtual int sp_eliminar_producto(string xCodigo_Producto)
        {
            var xCodigo_ProductoParameter = xCodigo_Producto != null ?
                new ObjectParameter("xCodigo_Producto", xCodigo_Producto) :
                new ObjectParameter("xCodigo_Producto", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_eliminar_producto", xCodigo_ProductoParameter);
        }
    
        public virtual int sp_nuevo_empleado(string xCodigo_Empleado, Nullable<decimal> xSueldo, string xNombre_Pila, string xApellido_Paterno, string xApellido_Materno, Nullable<System.DateTime> xFecha_Modificacion, string xAccion_Ejecutada)
        {
            var xCodigo_EmpleadoParameter = xCodigo_Empleado != null ?
                new ObjectParameter("xCodigo_Empleado", xCodigo_Empleado) :
                new ObjectParameter("xCodigo_Empleado", typeof(string));
    
            var xSueldoParameter = xSueldo.HasValue ?
                new ObjectParameter("xSueldo", xSueldo) :
                new ObjectParameter("xSueldo", typeof(decimal));
    
            var xNombre_PilaParameter = xNombre_Pila != null ?
                new ObjectParameter("xNombre_Pila", xNombre_Pila) :
                new ObjectParameter("xNombre_Pila", typeof(string));
    
            var xApellido_PaternoParameter = xApellido_Paterno != null ?
                new ObjectParameter("xApellido_Paterno", xApellido_Paterno) :
                new ObjectParameter("xApellido_Paterno", typeof(string));
    
            var xApellido_MaternoParameter = xApellido_Materno != null ?
                new ObjectParameter("xApellido_Materno", xApellido_Materno) :
                new ObjectParameter("xApellido_Materno", typeof(string));
    
            var xFecha_ModificacionParameter = xFecha_Modificacion.HasValue ?
                new ObjectParameter("xFecha_Modificacion", xFecha_Modificacion) :
                new ObjectParameter("xFecha_Modificacion", typeof(System.DateTime));
    
            var xAccion_EjecutadaParameter = xAccion_Ejecutada != null ?
                new ObjectParameter("xAccion_Ejecutada", xAccion_Ejecutada) :
                new ObjectParameter("xAccion_Ejecutada", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_nuevo_empleado", xCodigo_EmpleadoParameter, xSueldoParameter, xNombre_PilaParameter, xApellido_PaternoParameter, xApellido_MaternoParameter, xFecha_ModificacionParameter, xAccion_EjecutadaParameter);
        }
    
        public virtual int sp_nuevo_hojaRegistro(string xID_HojaRegistro, Nullable<int> xSaldo_Final_Mensual, string xCodigo_Empleado, string xArea, string xTurno, Nullable<int> xDia, Nullable<int> xMes, Nullable<int> xAnio, string xID_Kardex)
        {
            var xID_HojaRegistroParameter = xID_HojaRegistro != null ?
                new ObjectParameter("xID_HojaRegistro", xID_HojaRegistro) :
                new ObjectParameter("xID_HojaRegistro", typeof(string));
    
            var xSaldo_Final_MensualParameter = xSaldo_Final_Mensual.HasValue ?
                new ObjectParameter("xSaldo_Final_Mensual", xSaldo_Final_Mensual) :
                new ObjectParameter("xSaldo_Final_Mensual", typeof(int));
    
            var xCodigo_EmpleadoParameter = xCodigo_Empleado != null ?
                new ObjectParameter("xCodigo_Empleado", xCodigo_Empleado) :
                new ObjectParameter("xCodigo_Empleado", typeof(string));
    
            var xAreaParameter = xArea != null ?
                new ObjectParameter("xArea", xArea) :
                new ObjectParameter("xArea", typeof(string));
    
            var xTurnoParameter = xTurno != null ?
                new ObjectParameter("xTurno", xTurno) :
                new ObjectParameter("xTurno", typeof(string));
    
            var xDiaParameter = xDia.HasValue ?
                new ObjectParameter("xDia", xDia) :
                new ObjectParameter("xDia", typeof(int));
    
            var xMesParameter = xMes.HasValue ?
                new ObjectParameter("xMes", xMes) :
                new ObjectParameter("xMes", typeof(int));
    
            var xAnioParameter = xAnio.HasValue ?
                new ObjectParameter("xAnio", xAnio) :
                new ObjectParameter("xAnio", typeof(int));
    
            var xID_KardexParameter = xID_Kardex != null ?
                new ObjectParameter("xID_Kardex", xID_Kardex) :
                new ObjectParameter("xID_Kardex", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_nuevo_hojaRegistro", xID_HojaRegistroParameter, xSaldo_Final_MensualParameter, xCodigo_EmpleadoParameter, xAreaParameter, xTurnoParameter, xDiaParameter, xMesParameter, xAnioParameter, xID_KardexParameter);
        }
    
        public virtual int sp_nuevo_kardex(string xID_Kardex, Nullable<decimal> xSaldo_Inicial, Nullable<decimal> xSaldo_Final, Nullable<decimal> xMonto_Venta, string xCodigo_Empleado, Nullable<decimal> xGanancia, Nullable<int> xDia, Nullable<int> xMes, Nullable<int> xAnio)
        {
            var xID_KardexParameter = xID_Kardex != null ?
                new ObjectParameter("xID_Kardex", xID_Kardex) :
                new ObjectParameter("xID_Kardex", typeof(string));
    
            var xSaldo_InicialParameter = xSaldo_Inicial.HasValue ?
                new ObjectParameter("xSaldo_Inicial", xSaldo_Inicial) :
                new ObjectParameter("xSaldo_Inicial", typeof(decimal));
    
            var xSaldo_FinalParameter = xSaldo_Final.HasValue ?
                new ObjectParameter("xSaldo_Final", xSaldo_Final) :
                new ObjectParameter("xSaldo_Final", typeof(decimal));
    
            var xMonto_VentaParameter = xMonto_Venta.HasValue ?
                new ObjectParameter("xMonto_Venta", xMonto_Venta) :
                new ObjectParameter("xMonto_Venta", typeof(decimal));
    
            var xCodigo_EmpleadoParameter = xCodigo_Empleado != null ?
                new ObjectParameter("xCodigo_Empleado", xCodigo_Empleado) :
                new ObjectParameter("xCodigo_Empleado", typeof(string));
    
            var xGananciaParameter = xGanancia.HasValue ?
                new ObjectParameter("xGanancia", xGanancia) :
                new ObjectParameter("xGanancia", typeof(decimal));
    
            var xDiaParameter = xDia.HasValue ?
                new ObjectParameter("xDia", xDia) :
                new ObjectParameter("xDia", typeof(int));
    
            var xMesParameter = xMes.HasValue ?
                new ObjectParameter("xMes", xMes) :
                new ObjectParameter("xMes", typeof(int));
    
            var xAnioParameter = xAnio.HasValue ?
                new ObjectParameter("xAnio", xAnio) :
                new ObjectParameter("xAnio", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_nuevo_kardex", xID_KardexParameter, xSaldo_InicialParameter, xSaldo_FinalParameter, xMonto_VentaParameter, xCodigo_EmpleadoParameter, xGananciaParameter, xDiaParameter, xMesParameter, xAnioParameter);
        }
    
        public virtual int sp_nuevo_producto(string xCodigo_Producto, string xNombre, string xDescripcion, string xCategoria, string xID_SubfamiliaProducto, Nullable<int> xDia, Nullable<int> xMes, Nullable<int> xAnio, Nullable<decimal> xPrecio)
        {
            var xCodigo_ProductoParameter = xCodigo_Producto != null ?
                new ObjectParameter("xCodigo_Producto", xCodigo_Producto) :
                new ObjectParameter("xCodigo_Producto", typeof(string));
    
            var xNombreParameter = xNombre != null ?
                new ObjectParameter("xNombre", xNombre) :
                new ObjectParameter("xNombre", typeof(string));
    
            var xDescripcionParameter = xDescripcion != null ?
                new ObjectParameter("xDescripcion", xDescripcion) :
                new ObjectParameter("xDescripcion", typeof(string));
    
            var xCategoriaParameter = xCategoria != null ?
                new ObjectParameter("xCategoria", xCategoria) :
                new ObjectParameter("xCategoria", typeof(string));
    
            var xID_SubfamiliaProductoParameter = xID_SubfamiliaProducto != null ?
                new ObjectParameter("xID_SubfamiliaProducto", xID_SubfamiliaProducto) :
                new ObjectParameter("xID_SubfamiliaProducto", typeof(string));
    
            var xDiaParameter = xDia.HasValue ?
                new ObjectParameter("xDia", xDia) :
                new ObjectParameter("xDia", typeof(int));
    
            var xMesParameter = xMes.HasValue ?
                new ObjectParameter("xMes", xMes) :
                new ObjectParameter("xMes", typeof(int));
    
            var xAnioParameter = xAnio.HasValue ?
                new ObjectParameter("xAnio", xAnio) :
                new ObjectParameter("xAnio", typeof(int));
    
            var xPrecioParameter = xPrecio.HasValue ?
                new ObjectParameter("xPrecio", xPrecio) :
                new ObjectParameter("xPrecio", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_nuevo_producto", xCodigo_ProductoParameter, xNombreParameter, xDescripcionParameter, xCategoriaParameter, xID_SubfamiliaProductoParameter, xDiaParameter, xMesParameter, xAnioParameter, xPrecioParameter);
        }
    }
}