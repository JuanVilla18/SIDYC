
package Entidades;

public class Tipo_Implemento {
    
    private int Id_Tipo_Implemento;
    private String Nombre, Descripcion;
    
    public Tipo_Implemento(){}

    public Tipo_Implemento(int Id_Tipo_Implemento, String Nombre, String Descripcion) {
        this.Id_Tipo_Implemento = Id_Tipo_Implemento;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public int getId_Tipo_Implemento() {
        return Id_Tipo_Implemento;
    }

    public void setId_Tipo_Implemento(int Id_Tipo_Implemento) {
        this.Id_Tipo_Implemento = Id_Tipo_Implemento;
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
