
package Persistencia;

public class SQL_Helpers_Usuario {
    
    static String Seleccion = "SELECT `ID_USUARIO`, `NOMBRE`, `APELLIDOS`, `CORREO`, `NUMERO_DOCUMENTO`, `PASS_WORD`, `NUMERO_CONTACTO`, `DIRECCION`, `BARRIO`, `ID_GENERO`, `ID_ESTADO`, `ID_TIPO_DOCUMENTO`, `ID_TIPO_USUARIO` FROM `usuario`";
    static String Insercion = "INSERT INTO `usuario`(`NOMBRE`, `APELLIDOS`, `CORREO`, `NUMERO_DOCUMENTO`, `PASS_WORD`, `NUMERO_CONTACTO`, `DIRECCION`, `BARRIO`, `ID_GENERO`, `ID_ESTADO`, `ID_TIPO_DOCUMENTO`, `ID_TIPO_USUARIO`) VALUES";
    static String Actualizacion = "UPDATE `usuario` SET `NOMBRE`=?,`APELLIDOS`=?,`CORREO`=?,`NUMERO_DOCUMENTO`=?,`PASS_WORD`=?,`NUMERO_CONTACTO`=?,`DIRECCION`=?,`BARRIO`=?,`ID_GENERO`=?,`ID_ESTADO`=?,`ID_TIPO_DOCUMENTO`=?,`ID_TIPO_USUARIO`=?";
    static String Eliminar = "UPDATE `usuario` SET `estado` = 2";
    
    public static String SeleccionarTodosUsuarios() {
        return Seleccion + " ORDER BY `NUMERO_DOCUMENTO`";
    }

    public static String BuscarEnOtroCampoUsuario(String campo, String valor){
        return Seleccion + " WHERE "+campo+" = '"+valor+"'";
    }

    public static String BuscarUsuarioPorDNI(String Numero_Documento){
        return Seleccion + " WHERE `NUMERO_DOCUMENTO` = '"+Numero_Documento+"'";
    }

    public static String ValidarUsuario() {
        return Seleccion + " WHERE `NUMERO_DOCUMENTO`=? AND `PASS_WORD`=?";
    }

    public static String InsertarUsuario() {
        return Insercion + " (?, ?, ?, ?, ?, ?, ?, ?)";
    }

    public static String ActualizarUsuario(String Numero_Documento) {
        return Actualizacion +  " WHERE `NUMERO_DOCUMENTO` = '"+Numero_Documento+"'";
    }

    public static String EliminarUsuario(String Numero_Documento) {
        return Eliminar + " WHERE `NUMERO_DOCUMENTO` = '"+Numero_Documento+"'";
    }
}
