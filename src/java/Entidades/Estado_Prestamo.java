
package Entidades;

public class Estado_Prestamo {
    
    private int Id_Estado_Prestamo;
    private String Nombre, Descripcion;
    
    public Estado_Prestamo(){}

    public Estado_Prestamo(int Id_Estado_Prestamo, String Nombre, String Descripcion) {
        this.Id_Estado_Prestamo = Id_Estado_Prestamo;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public int getId_Estado_Prestamo() {
        return Id_Estado_Prestamo;
    }

    public void setId_Estado_Prestamo(int Id_Estado_Prestamo) {
        this.Id_Estado_Prestamo = Id_Estado_Prestamo;
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
