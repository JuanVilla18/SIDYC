
package Entidades;

import java.sql.Date;

public class Prestamo {
    
    private int Id_Prestamo;
    private Date Fecha_Entrega;
    private String Descripcion;
    private int Id_Usuario, Id_Implemento, Id_Estado_Prestamo;
    
    public Prestamo(){}

    public Prestamo(int Id_Prestamo, Date Fecha_Entrega, String Descripcion, int Id_Usuario, int Id_Implemento, int Id_Estado_Prestamo) {
        this.Id_Prestamo = Id_Prestamo;
        this.Fecha_Entrega = Fecha_Entrega;
        this.Descripcion = Descripcion;
        this.Id_Usuario = Id_Usuario;
        this.Id_Implemento = Id_Implemento;
        this.Id_Estado_Prestamo = Id_Estado_Prestamo;
    }

    public int getId_Prestamo() {
        return Id_Prestamo;
    }

    public void setId_Prestamo(int Id_Prestamo) {
        this.Id_Prestamo = Id_Prestamo;
    }

    public Date getFecha_Entrega() {
        return Fecha_Entrega;
    }

    public void setFecha_Entrega(Date Fecha_Entrega) {
        this.Fecha_Entrega = Fecha_Entrega;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public int getId_Usuario() {
        return Id_Usuario;
    }

    public void setId_Usuario(int Id_Usuario) {
        this.Id_Usuario = Id_Usuario;
    }

    public int getId_Implemento() {
        return Id_Implemento;
    }

    public void setId_Implemento(int Id_Implemento) {
        this.Id_Implemento = Id_Implemento;
    }

    public int getId_Estado_Prestamo() {
        return Id_Estado_Prestamo;
    }

    public void setId_Estado_Prestamo(int Id_Estado_Prestamo) {
        this.Id_Estado_Prestamo = Id_Estado_Prestamo;
    }
}
