
package Persistencia;

import Entidades.Prestamo;
import Entidades.Usuario;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class DAO_Prestamo {
    
    public ArrayList<Prestamo> getListadoPrestamos(Connection conect) {
        ArrayList<Prestamo> ListaUsers = new ArrayList<>();
        try {
            PreparedStatement pst = conect.prepareStatement(SQL_Helpers_Prestamo.SeleccionarTodosPrestamos());
            ResultSet resultado = pst.executeQuery();
            while(resultado.next()) {
                Prestamo p = new Prestamo();
                p.setId_Prestamo(resultado.getInt(1));
                p.setFecha_Entrega(resultado.getDate(2));
                p.setDescripcion(resultado.getString(3));
                p.setId_Usuario(resultado.getInt(4));
                p.setId_Implemento(resultado.getInt(5));
                p.setId_Estado_Prestamo(resultado.getInt(6));
            }
        } catch (Exception e) {
        }
        finally {
            try {
                conect.close();
            } catch (Exception e) {
            }
        }
        return ListaUsers;
    }
    
    public Prestamo getPrestamoDNI(Connection conect, String Numero_Documento, int Id_Usuario) {
        Prestamo p = new Prestamo();
        p.setId_Usuario(0);
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Prestamo.BuscarPrestamoPorDNI(Numero_Documento, Id_Usuario));
            ResultSet resultado = almacenada.executeQuery();
            while (resultado.next()) {
                p.setId_Prestamo(resultado.getInt(1));
                p.setFecha_Entrega(resultado.getDate(2));
                p.setDescripcion(resultado.getString(3));
                p.setId_Usuario(resultado.getInt(4));
                p.setId_Implemento(resultado.getInt(5));
                p.setId_Estado_Prestamo(resultado.getInt(6));
            }
        } catch (Exception e) {
        }
        finally {
            try {
                conect.close();
            } catch (Exception e) {
            }
        }
        return p;
    }
    
    public Prestamo getPrestamoPorCodigo(Connection conect, int Id_Prestamo) {
        Prestamo p = new Prestamo();
        p.setId_Prestamo(0);
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Prestamo.BuscarPrestamoPorCodigo(Id_Prestamo));
            ResultSet resultado = almacenada.executeQuery();
            while (resultado.next()) {
                p.setId_Usuario(resultado.getInt(1));
                p.setId_Prestamo(resultado.getInt(1));
                p.setFecha_Entrega(resultado.getDate(2));
                p.setDescripcion(resultado.getString(3));
                p.setId_Usuario(resultado.getInt(4));
                p.setId_Implemento(resultado.getInt(5));
                p.setId_Estado_Prestamo(resultado.getInt(6));
            }
        } catch (Exception e) {
        }
        finally {
            try {
                conect.close();
            } catch (Exception e) {
            }
        }
        return p;
    }
    
    public String getGuardarPrestamo(Connection conect, Date Fecha_Entrega, String Descripcion, int Id_Usuario, int Id_Implemento, int Id_Estado_Prestamo) {
        String result = "";
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Prestamo.InsertarPrestamo());
            almacenada.setDate(1, Fecha_Entrega);
            almacenada.setString(2, Descripcion);
            almacenada.setInt(3, Id_Usuario);
            almacenada.setInt(4, Id_Implemento);
            almacenada.setInt(5, Id_Estado_Prestamo);
            almacenada.execute();
            System.out.println(almacenada);
            if (almacenada.getUpdateCount()>0) {
                result = "Prestamo Guardado";
            }
            else {
                result = "Prestamo No Guardado";
            }
        }
        catch (Exception e) {
            result += e.getMessage();
            e.getStackTrace();
        }
        finally {
            try {
                conect.close();
            } catch (Exception e) {
            }
        }
        return result;
    }
    
    public String getActualizarPrestamo(Connection conect, int Id_Prestamo, Date Fecha_Entrega, String Descripcion, int Id_Usuario, int Id_Implemento, int Id_Estado_Prestamo) {
        String result = "";
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Prestamo.ActualizarPrestamo(Id_Prestamo));
            almacenada.setDate(1, Fecha_Entrega);
            almacenada.setString(2, Descripcion);
            almacenada.setInt(3, Id_Usuario);
            almacenada.setInt(4, Id_Implemento);
            almacenada.setInt(5, Id_Estado_Prestamo);
            almacenada.execute();
            if (almacenada.getUpdateCount()>0) {
                result= "Prestamo Actualizado";
            } else {
                result= "Prestamo No Actualizado";
            }
        } catch (Exception e) {
            result+=e.getMessage();
            e.getStackTrace();
        } 
        finally {
            try {
                conect.close();
            } catch (Exception e) {
            }
        }
        return result;
    }
    
    public String getEliminarPrestamo(Connection conect, int Id_Prestamo){
        String result = "";
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Prestamo.EliminarPrestamo(Id_Prestamo));
            almacenada.execute();
            if (almacenada.getUpdateCount()>0) {
                result= "Eliminado";
            } else if(almacenada.getUpdateCount()<=0){
                result= "No Eliminado";
            }
        } catch (Exception e) {
            result+=e.getMessage();
            e.getStackTrace();
        }
        finally {
            try {
                conect.close();
            } catch (Exception e) {
            }
        }
        return result;
    }
}
