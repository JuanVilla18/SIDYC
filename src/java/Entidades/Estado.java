
package Entidades;

public class Estado {
    
    private int Id_Estado;
    private String Nombre, Descripcion;
    
    public Estado(){}

    public Estado(int Id_Estado, String Nombre, String Descripcion) {
        this.Id_Estado = Id_Estado;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public int getId_Estado() {
        return Id_Estado;
    }

    public void setId_Estado(int Id_Estado) {
        this.Id_Estado = Id_Estado;
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
