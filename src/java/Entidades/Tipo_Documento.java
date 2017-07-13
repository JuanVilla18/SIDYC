
package Entidades;

public class Tipo_Documento {
    
    private int Id_Tipo_Documento;
    private String Nombre, Descripcion;
    
    public Tipo_Documento(){}

    public Tipo_Documento(int Id_Tipo_Documento, String Nombre, String Descripcion) {
        this.Id_Tipo_Documento = Id_Tipo_Documento;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public int getId_Tipo_Documento() {
        return Id_Tipo_Documento;
    }

    public void setId_Tipo_Documento(int Id_Tipo_Documento) {
        this.Id_Tipo_Documento = Id_Tipo_Documento;
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
