
package Persistencia;


public class SQL_Helpers_Prestamo {
    
    static String Seleccion = "SELECT `ID_PRESTAMO`, `FECHA_ENTREGA`, `DESCRIPCION`, `ID_USUARIO`, `ID_IMPLEMENTO`, `ID_ESTADO_PRESTAMO` FROM `prestamo`";
    static String Insercion = "INSERT INTO `prestamo`(`FECHA_ENTREGA`, `DESCRIPCION`, `ID_USUARIO`, `ID_IMPLEMENTO`, `ID_ESTADO_PRESTAMO`) VALUES";
    static String Actualizacion = "UPDATE `prestamo` SET `FECHA_ENTREGA`=?,`DESCRIPCION`=?,`ID_USUARIO`=?,`ID_IMPLEMENTO`=?,`ID_ESTADO_PRESTAMO`=?";
    static String Eliminar = "UPDATE `prestamo` SET `ID_ESTADO_PRESTAMO` = 2";
    
    public static String SeleccionarTodosPrestamos() {
        return Seleccion + " ORDER BY `ID_PRESTAMO`";
    }

    public static String BuscarPrestamoPorCodigo(int Id_Prestamo){
        return Seleccion + " WHERE `ID_PRESTAMO` = '"+Id_Prestamo+"'";
    }

    public static String BuscarPrestamoPorDNI(String Numero_Documento, int Id_Usuario){
        return "SELECT prestamo.`ID_PRESTAMO`, prestamo.`FECHA_ENTREGA`, prestamo.`DESCRIPCION`, prestamo.`ID_USUARIO`, prestamo.`ID_IMPLEMENTO`, prestamo.`ID_ESTADO_PRESTAMO` FROM `prestamo`, `usuario` WHERE usuario.NUMERO_DOCUMENTO = '"+Numero_Documento+"' AND usuario.ID_USUARIO = '"+Id_Usuario+"'";
    }

    public static String InsertarPrestamo() {
        return Insercion + " (?, ?, ?, ?, ?)";
    }

    public static String ActualizarPrestamo(int Id_Prestamo) {
        return Actualizacion +  " WHERE `ID_PRESTAMO` = '"+Id_Prestamo+"'";
    }

    public static String EliminarPrestamo(int Id_Prestamo) {
        return Eliminar + " WHERE `ID_PRESTAMO` = '"+Id_Prestamo+"'";
    }
    
}
