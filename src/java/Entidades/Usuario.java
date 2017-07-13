
package Entidades;

public class Usuario {
    
    private int Id_Usuario;
    private String Nombre, Apellidos, Correo, Numero_Documento, Pass_Word, Numero_Contacto, Direccion, Barrio;
    private int Id_Genero, Id_Estado, Id_Tipo_Documento, Id_Tipo_Usuario;
    
    public Usuario(){}

    public Usuario(int Id_Usuario, String Nombre, String Apellidos, String Correo, String Numero_Documento, String Pass_Word, String Numero_Contacto, String Direccion, String Barrio, int Id_Genero, int Id_Estado, int Id_Tipo_Documento, int Id_Tipo_Usuario) {
        this.Id_Usuario = Id_Usuario;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.Correo = Correo;
        this.Numero_Documento = Numero_Documento;
        this.Pass_Word = Pass_Word;
        this.Numero_Contacto = Numero_Contacto;
        this.Direccion = Direccion;
        this.Barrio = Barrio;
        this.Id_Genero = Id_Genero;
        this.Id_Estado = Id_Estado;
        this.Id_Tipo_Documento = Id_Tipo_Documento;
        this.Id_Tipo_Usuario = Id_Tipo_Usuario;
    }

    public int getId_Usuario() {
        return Id_Usuario;
    }

    public void setId_Usuario(int Id_Usuario) {
        this.Id_Usuario = Id_Usuario;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getNumero_Documento() {
        return Numero_Documento;
    }

    public void setNumero_Documento(String Numero_Documento) {
        this.Numero_Documento = Numero_Documento;
    }

    public String getPass_Word() {
        return Pass_Word;
    }

    public void setPass_Word(String Pass_Word) {
        this.Pass_Word = Pass_Word;
    }

    public String getNumero_Contacto() {
        return Numero_Contacto;
    }

    public void setNumero_Contacto(String Numero_Contacto) {
        this.Numero_Contacto = Numero_Contacto;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getBarrio() {
        return Barrio;
    }

    public void setBarrio(String Barrio) {
        this.Barrio = Barrio;
    }

    public int getId_Genero() {
        return Id_Genero;
    }

    public void setId_Genero(int Id_Genero) {
        this.Id_Genero = Id_Genero;
    }

    public int getId_Estado() {
        return Id_Estado;
    }

    public void setId_Estado(int Id_Estado) {
        this.Id_Estado = Id_Estado;
    }

    public int getId_Tipo_Documento() {
        return Id_Tipo_Documento;
    }

    public void setId_Tipo_Documento(int Id_Tipo_Documento) {
        this.Id_Tipo_Documento = Id_Tipo_Documento;
    }

    public int getId_Tipo_Usuario() {
        return Id_Tipo_Usuario;
    }

    public void setId_Tipo_Usuario(int Id_Tipo_Usuario) {
        this.Id_Tipo_Usuario = Id_Tipo_Usuario;
    }
}
