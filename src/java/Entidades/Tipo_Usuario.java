
package Entidades;

public class Tipo_Usuario {
    
    private int Id_Tipo_Usuario;
    private String Nombre, Descripcion;
    
    public Tipo_Usuario(){}

    public Tipo_Usuario(int Id_Tipo_Usuario, String Nombre, String Descripcion) {
        this.Id_Tipo_Usuario = Id_Tipo_Usuario;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public int getId_Tipo_Usuario() {
        return Id_Tipo_Usuario;
    }

    public void setId_Tipo_Usuario(int Id_Tipo_Usuario) {
        this.Id_Tipo_Usuario = Id_Tipo_Usuario;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
}
