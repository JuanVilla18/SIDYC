/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Entidades.Prestamo;
import Persistencia.DAO_Prestamo;
import Utilidades.Conexion;
import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author juan.villa
 */
public class NegPrestamo {
    Connection c;
    DAO_Prestamo dao;
    
    public NegPrestamo(){
        dao = new DAO_Prestamo();
    }
         
    public ArrayList<Prestamo> getListadoPrestamos(){
        c = new Conexion().getCon();
        return dao.getListadoPrestamos(c);
    }
    
    public Prestamo getPrestamoDNI(String Numero_Documento, int Id_Usuario){
        c = new Conexion().getCon();
        return dao.getPrestamoDNI(c, Numero_Documento, Id_Usuario);
    }
    
    public Prestamo getPrestamoPorOtroCampo(int Id_Prestamo){
        c = new Conexion().getCon();
        return dao.getPrestamoPorCodigo(c, Id_Prestamo);
    }
    
    public void getGuardarPrestamo(Prestamo p) throws Exception {
        String alertas = "";
        
        Date Fecha_Entrega;
        String Descripcion;
        int Id_Usuario, Id_Implemento, Id_Estado_Prestamo;
        
        Fecha_Entrega = p.getFecha_Entrega();
        Descripcion = p.getDescripcion();
        Id_Usuario = p.getId_Usuario();
        Id_Implemento = p.getId_Implemento();
        Id_Estado_Prestamo = p.getId_Estado_Prestamo();
        
        c = new Conexion().getCon();
        
        alertas = dao.getGuardarPrestamo(c, Fecha_Entrega, Descripcion, Id_Usuario, Id_Implemento, Id_Estado_Prestamo);
        
        if(!"".equals(alertas)) {
            throw new Exception(alertas);
        }
    }
    
    public void getActualizar(Prestamo p) throws Exception {
        String alertas = "";
        
        Date Fecha_Entrega;
        String Descripcion;
        int Id_Usuario, Id_Implemento, Id_Estado_Prestamo;
        
        Fecha_Entrega = p.getFecha_Entrega();
        Descripcion = p.getDescripcion();
        Id_Usuario = p.getId_Usuario();
        Id_Implemento = p.getId_Implemento();
        Id_Estado_Prestamo = p.getId_Estado_Prestamo();
        
        
        c = new Conexion().getCon();
        
        alertas = dao.getGuardarPrestamo(c, Fecha_Entrega, Descripcion, Id_Usuario, Id_Implemento, Id_Estado_Prestamo);
        
        if(!"".equals(alertas)) {
            throw new Exception(alertas);
        }
    }
    
    public String getEliminarUsuario(Prestamo p){
        int Id_Prestamo = p.getId_Prestamo();
        c = new Conexion().getCon();
        return dao.getEliminarPrestamo(c, Id_Prestamo);
    }
}
