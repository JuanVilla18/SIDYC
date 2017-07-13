/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Administrador
 */
public class Conexion {
    
    Connection con;
    
    public Connection getCon() {
        Conectdb();
        return con;
    }
    
    public void setCon(Connection con) {
        this.con = con;
    }
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance(); //Controla si la clase existe
        }catch (ClassNotFoundException e1) {
            System.out.println("ClassNotFoundException "+e1.getMessage());
        }catch (InstantiationException e2){
            System.out.println("ClassNotFoundException "+e2.getMessage());
        }catch(IllegalAccessException e3){
            System.out.println("ClassNotFoundException "+e3.getMessage());
        }catch(Exception e4){
            System.out.println("ClassNotFoundException "+e4.getMessage());
        }
    }//Fin static
    
    public void Conectdb() {
        String host = "127.0.0.1";
        String db = "db_prestamo_implementos";
        String puerto = "3306";
        String usuario = "implementos";
        String clave = "k0nFu5y0nE2PeWjE";
        try {
            setCon(DriverManager.getConnection("jdbc:mysql://"+host+":"+puerto+"/"+db,usuario,clave));
        } catch (SQLException e){
            System.out.println("SQLException :" + e.getMessage());
        } 
    }//Fin conectar db
    
    public void cerrardb() {
        try {
            con.close();
        } catch (Exception e){
        }
    }//Cerrar base de datos
}
