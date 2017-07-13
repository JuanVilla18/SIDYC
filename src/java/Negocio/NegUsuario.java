/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Entidades.Usuario;
import Persistencia.DAO_Usuario;
import Utilidades.Conexion;
import java.sql.Connection;
import java.util.ArrayList;

/**
 *
 * @author juan.villa
 */
public class NegUsuario {
    Connection c;
    DAO_Usuario dao;
    
    public NegUsuario(){
        dao = new DAO_Usuario();
    }
         
    public ArrayList<Usuario> getListadoUsuarios(){
        c = new Conexion().getCon();
        return dao.getListadoUsuarios(c);
    }
    
    public Usuario getUsuarioDNI(String Numero_Documento){
        c = new Conexion().getCon();
        return dao.getUsuarioDNI(c, Numero_Documento);
    }
    
    public Usuario getUsuarioPorOtroCampo(String valor, String campo){
        c = new Conexion().getCon();
        return dao.getUsuarioPorOtroCampo(c, valor, campo);
    }
    
    public Usuario ValidarUsuario(String Numero_Documento, String Pass_Word) {
        c = new Conexion().getCon();
        return dao.ValidarUsuario(c, Numero_Documento, Pass_Word);
    }
    
    public void getGuardarUsuario(Usuario u) throws Exception {
        String alertas = "";
        
        String Nombre, Apellidos, Correo, Numero_Documento, Pass_Word, Numero_Contacto, Direccion, Barrio;
        int Id_Genero, Id_Estado, Id_Tipo_Documento, Id_Tipo_Usuario;
        
        Nombre = u.getNombre();
        Apellidos = u.getApellidos();
        Correo = u.getCorreo();
        Numero_Documento = u.getNumero_Documento();
        Pass_Word = u.getPass_Word();
        Numero_Contacto = u.getNumero_Contacto();
        Direccion = u.getDireccion();
        Barrio = u.getBarrio();
        Id_Genero = u.getId_Genero();
        Id_Estado = u.getId_Estado();
        Id_Tipo_Documento = u.getId_Tipo_Documento();
        Id_Tipo_Usuario = u.getId_Tipo_Usuario();
        
        
        c = new Conexion().getCon();
        
        alertas = dao.getGuardarUsuario(c, Nombre, Apellidos, Correo, Numero_Documento, Pass_Word, Numero_Contacto, Direccion, Barrio, Id_Genero, Id_Estado, Id_Tipo_Documento, Id_Tipo_Usuario);
        
        if(!"".equals(alertas)) {
            throw new Exception(alertas);
        }
    }
    
    public void getActualizarUsuario(Usuario u) throws Exception {
        String alertas = "";
        
        String Nombre, Apellidos, Correo, Numero_Documento, Pass_Word, Numero_Contacto, Direccion, Barrio;
        int Id_Genero, Id_Estado, Id_Tipo_Documento, Id_Tipo_Usuario;
        
        Nombre = u.getNombre();
        Apellidos = u.getApellidos();
        Correo = u.getCorreo();
        Numero_Documento = u.getNumero_Documento();
        Pass_Word = u.getPass_Word();
        Numero_Contacto = u.getNumero_Contacto();
        Direccion = u.getDireccion();
        Barrio = u.getBarrio();
        Id_Genero = u.getId_Genero();
        Id_Estado = u.getId_Estado();
        Id_Tipo_Documento = u.getId_Tipo_Documento();
        Id_Tipo_Usuario = u.getId_Tipo_Usuario();
        
        
        c = new Conexion().getCon();
        
        alertas = dao.getGuardarUsuario(c, Nombre, Apellidos, Correo, Numero_Documento, Pass_Word, Numero_Contacto, Direccion, Barrio, Id_Genero, Id_Estado, Id_Tipo_Documento, Id_Tipo_Usuario);
        
        if(!"".equals(alertas)) {
            throw new Exception(alertas);
        }
    }
    
    public String getEliminarUsuario(Usuario u){
        String Numero_Documento = u.getNumero_Documento();
        c = new Conexion().getCon();
        return dao.getEliminarUsuario(c, Numero_Documento);
    }
}
