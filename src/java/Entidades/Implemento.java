
package Entidades;

public class Implemento {
    
    private int Id_Implemento;
    private String Codigo_Implemento, Descripcion;
    private int Id_Tipo_Implemento, Id_Deporte_Implemento, Id_Estado_Implemento;
    
    public Implemento(){}

    public Implemento(int Id_Implemento, String Codigo_Implemento, String Descripcion, int Id_Tipo_Implemento, int Id_Deporte_Implemento, int Id_Estado_Implemento) {
        this.Id_Implemento = Id_Implemento;
        this.Codigo_Implemento = Codigo_Implemento;
        this.Descripcion = Descripcion;
        this.Id_Tipo_Implemento = Id_Tipo_Implemento;
        this.Id_Deporte_Implemento = Id_Deporte_Implemento;
        this.Id_Estado_Implemento = Id_Estado_Implemento;
    }

    public int getId_Implemento() {
        return Id_Implemento;
    }

    public void setId_Implemento(int Id_Implemento) {
        this.Id_Implemento = Id_Implemento;
    }

    public String getCodigo_Implemento() {
        return Codigo_Implemento;
    }

    public void setCodigo_Implemento(String Codigo_Implemento) {
        this.Codigo_Implemento = Codigo_Implemento;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public int getId_Tipo_Implemento() {
        return Id_Tipo_Implemento;
    }

    public void setId_Tipo_Implemento(int Id_Tipo_Implemento) {
        this.Id_Tipo_Implemento = Id_Tipo_Implemento;
    }

    public int getId_Deporte_Implemento() {
        return Id_Deporte_Implemento;
    }

    public void setId_Deporte_Implemento(int Id_Deporte_Implemento) {
        this.Id_Deporte_Implemento = Id_Deporte_Implemento;
    }

    public int getId_Estado_Implemento() {
        return Id_Estado_Implemento;
    }

    public void setId_Estado_Implemento(int Id_Estado_Implemento) {
        this.Id_Estado_Implemento = Id_Estado_Implemento;
    }
}
