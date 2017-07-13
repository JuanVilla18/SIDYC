
package Entidades;

public class Deporte_Implemento {
    
    private int Id_Deporte_Implemento;
    private String Nombre, Descripcion;
    
    public Deporte_Implemento(){}

    public Deporte_Implemento(int Id_Deporte_Implemento, String Nombre, String Descripcion) {
        this.Id_Deporte_Implemento = Id_Deporte_Implemento;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public int getId_Deporte_Implemento() {
        return Id_Deporte_Implemento;
    }

    public void setId_Deporte_Implemento(int Id_Deporte_Implemento) {
        this.Id_Deporte_Implemento = Id_Deporte_Implemento;
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
