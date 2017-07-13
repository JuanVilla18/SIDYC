
package Entidades;

public class Genero {
    
    private int Id_Genero;
    private String Nombre, Descripcion;
    
    public Genero(){}

    public Genero(int Id_Genero, String Nombre, String Descripcion) {
        this.Id_Genero = Id_Genero;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public int getId_Genero() {
        return Id_Genero;
    }

    public void setId_Genero(int Id_Genero) {
        this.Id_Genero = Id_Genero;
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
