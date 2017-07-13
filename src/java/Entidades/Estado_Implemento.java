
package Entidades;

public class Estado_Implemento {
    
    private int Id_Estado_Implemento;
    private String Nombre, Descripcion;
    
    public Estado_Implemento(){}

    public Estado_Implemento(int Id_Estado_Implemento, String Nombre, String Descripcion) {
        this.Id_Estado_Implemento = Id_Estado_Implemento;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public int getId_Estado_Implemento() {
        return Id_Estado_Implemento;
    }

    public void setId_Estado_Implemento(int Id_Estado_Implemento) {
        this.Id_Estado_Implemento = Id_Estado_Implemento;
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
