/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Entidades.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author juan.villa
 */
public class DAO_Usuario {
    
    public ArrayList<Usuario> getListadoUsuarios(Connection conect) {
        ArrayList<Usuario> ListaUsers = new ArrayList<>();
        try {
            PreparedStatement pst = conect.prepareStatement(SQL_Helpers_Usuario.SeleccionarTodosUsuarios());
            ResultSet resultado = pst.executeQuery();
            while(resultado.next()) {
                Usuario u = new Usuario();
                u.setId_Usuario(resultado.getInt(1));
                u.setNombre(resultado.getString(2));
                u.setApellidos(resultado.getString(3));
                u.setCorreo(resultado.getString(4));
                u.setNumero_Documento(resultado.getString(5));
                u.setPass_Word(resultado.getString(6));
                u.setNumero_Contacto(resultado.getString(7));
                u.setDireccion(resultado.getString(8));
                u.setBarrio(resultado.getString(9));
                u.setId_Genero(resultado.getInt(10));
                u.setId_Estado(resultado.getInt(11));
                u.setId_Tipo_Documento(resultado.getInt(12));
                u.setId_Tipo_Usuario(resultado.getInt(13));
                ListaUsers.add(u);
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
    
    public Usuario getUsuarioDNI(Connection conect, String valor) {
        Usuario u = new Usuario();
        u.setNumero_Documento("*");
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Usuario.BuscarUsuarioPorDNI(valor));
            ResultSet resultado = almacenada.executeQuery();
            while (resultado.next()) {
                u.setId_Usuario(resultado.getInt(1));
                u.setNombre(resultado.getString(2));
                u.setApellidos(resultado.getString(3));
                u.setCorreo(resultado.getString(4));
                u.setNumero_Documento(resultado.getString(5));
                u.setPass_Word(resultado.getString(6));
                u.setNumero_Contacto(resultado.getString(7));
                u.setDireccion(resultado.getString(8));
                u.setBarrio(resultado.getString(9));
                u.setId_Genero(resultado.getInt(10));
                u.setId_Estado(resultado.getInt(11));
                u.setId_Tipo_Documento(resultado.getInt(12));
                u.setId_Tipo_Usuario(resultado.getInt(13));
            }
        } catch (Exception e) {
        }
        finally {
            try {
                conect.close();
            } catch (Exception e) {
            }
        }
        return u;
    }
    
    public Usuario getUsuarioPorOtroCampo(Connection conect, String valor, String campo) {
        Usuario u = new Usuario();
        u.setNumero_Documento("*");
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Usuario.BuscarEnOtroCampoUsuario(valor, campo));
            ResultSet resultado = almacenada.executeQuery();
            while (resultado.next()) {
                u.setId_Usuario(resultado.getInt(1));
                u.setNombre(resultado.getString(2));
                u.setApellidos(resultado.getString(3));
                u.setCorreo(resultado.getString(4));
                u.setNumero_Documento(resultado.getString(5));
                u.setPass_Word(resultado.getString(6));
                u.setNumero_Contacto(resultado.getString(7));
                u.setDireccion(resultado.getString(8));
                u.setBarrio(resultado.getString(9));
                u.setId_Genero(resultado.getInt(10));
                u.setId_Estado(resultado.getInt(11));
                u.setId_Tipo_Documento(resultado.getInt(12));
                u.setId_Tipo_Usuario(resultado.getInt(13));
            }
        } catch (Exception e) {
        }
        finally {
            try {
                conect.close();
            } catch (Exception e) {
            }
        }
        return u;
    }
    
    public Usuario ValidarUsuario(Connection conect, String Numero_Documento, String Pass_Word) {
        Usuario u = new Usuario();
        u.setNumero_Documento("*");
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Usuario.ValidarUsuario());
            almacenada.setString(1, Numero_Documento);
            almacenada.setString(2, Pass_Word);
            ResultSet resultado = almacenada.executeQuery();
            while (resultado.next()) {                
                u.setId_Usuario(resultado.getInt(1));
                u.setNombre(resultado.getString(2));
                u.setApellidos(resultado.getString(3));
                u.setCorreo(resultado.getString(4));
                u.setNumero_Documento(resultado.getString(5));
                u.setPass_Word(resultado.getString(6));
                u.setNumero_Contacto(resultado.getString(7));
                u.setDireccion(resultado.getString(8));
                u.setBarrio(resultado.getString(9));
                u.setId_Genero(resultado.getInt(10));
                u.setId_Estado(resultado.getInt(11));
                u.setId_Tipo_Documento(resultado.getInt(12));
                u.setId_Tipo_Usuario(resultado.getInt(13));
            }
        } catch (Exception e) {
        }
        finally {
            try {
                conect.close();
            } catch (Exception e) {
            }
        }
        return u;
    }
    
    public String getGuardarUsuario(Connection conect, String Nombre, String Apellidos, String Correo, String Numero_Documento, String Pass_Word, String Numero_Contacto, String Direccion, String Barrio, int Id_Genero, int Id_Estado, int Id_Tipo_Documento, int Id_Tipo_Usuario) {
        String result = "";
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Usuario.InsertarUsuario());
            almacenada.setString(1, Nombre);
            almacenada.setString(2, Apellidos);
            almacenada.setString(3, Correo);
            almacenada.setString(4, Numero_Documento);
            almacenada.setString(5, Pass_Word);
            almacenada.setString(6, Numero_Contacto);
            almacenada.setString(7, Direccion);
            almacenada.setString(8, Barrio);
            almacenada.setInt(9, Id_Genero);
            almacenada.setInt(10, Id_Estado);
            almacenada.setInt(11, Id_Tipo_Documento);
            almacenada.setInt(12, Id_Tipo_Usuario);
            almacenada.execute();
            System.out.println(almacenada);
            if (almacenada.getUpdateCount()>0) {
                result = "Usuario Guardado";
            }
            else {
                result = "Usuario No Guardado";
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
    
    public String getActualizarUsuario(Connection conect, String Nombre, String Apellidos, String Correo, String Numero_Documento, String Pass_Word, String Numero_Contacto, String Direccion, String Barrio, int Id_Genero, int Id_Estado, int Id_Tipo_Documento, int Id_Tipo_Usuario) {
        String result = "";
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Usuario.ActualizarUsuario(Numero_Documento));
            almacenada.setString(1, Nombre);
            almacenada.setString(2, Apellidos);
            almacenada.setString(3, Correo);
            almacenada.setString(4, Numero_Documento);
            almacenada.setString(5, Pass_Word);
            almacenada.setString(6, Numero_Contacto);
            almacenada.setString(7, Direccion);
            almacenada.setString(8, Barrio);
            almacenada.setInt(9, Id_Genero);
            almacenada.setInt(10, Id_Estado);
            almacenada.setInt(11, Id_Tipo_Documento);
            almacenada.setInt(12, Id_Tipo_Usuario);
            almacenada.execute();
            if (almacenada.getUpdateCount()>0) {
                result= "Usuario Actualizado";
            } else {
                result= "Usuario No Actualizado";
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
    
    public String getEliminarUsuario(Connection conect, String Numero_Documento){
        String result = "";
        try {
            PreparedStatement almacenada = conect.prepareStatement(SQL_Helpers_Usuario.EliminarUsuario(Numero_Documento));
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
