/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

/**
 *
 * @author Juan
 */
public class Desolve {

    public static String desolveSiglaTipoDocumento(String valor) {
        String solucion = "";
        if (valor.equals("Cédula de Ciudadanía")) {
            solucion = "T1";
        } else if(valor.equals("CÃ©dula de CiudadanÃ­a")){
            solucion = "T1";
        }
        if (valor.equals("Cédula de Extranjería")) {
            solucion = "T2";
        } else if(valor.equals("CÃ©dula de ExtranjerÃ­a")){
            solucion = "T2";
        }
        if (valor.equals("Carné Diplomatico")) {
            solucion = "T3";
        } else if(valor.equals("CarnÃ© Diplomatico")){
            solucion = "T3";
        }
        if (valor.equals("Tarjeta de Identidad")) {
            solucion = "T4";
        }
        if (valor.equals("Pasaporte")) {
            solucion = "T5";
        }
        if (valor.equals("Registro Civil de Nacimiento")) {
            solucion = "T6";
        }
        if (valor.equals("N.U.I.P.")) {
            solucion = "T7";
        }
        if(valor.equals("T1")){
            solucion = "T1";
        }
        if(valor.equals("T2")){
            solucion = "T2";
        }
        if(valor.equals("T3")){
            solucion = "T3";
        }
        if(valor.equals("T4")){
            solucion = "T4";
        }
        if(valor.equals("T5")){
            solucion = "T5";
        }
        if(valor.equals("T6")){
            solucion = "T6";
        }
        if(valor.equals("T7")){
            solucion = "T7";
        }
        return solucion;
    }

    public static String desolveSiglaEstado(String valor){
        String solucion = "";
        if(valor.equals("activo")){
            solucion = "E1";
        }
        if(valor.equals("inactivo")){
            solucion = "E2";
        }
        if(valor.equals("E1")){
            solucion = "E1";
        }
        if(valor.equals("E2")){
            solucion = "E2";
        }
        return solucion;
    }
    
    public static String desolveSiglaGenero(String valor){
        String solucion = "";
        if(valor.equals("masculino")){
            solucion = "G1";
        } 
        if(valor.equals("femenino")){
            solucion = "G2";
        }
        if(valor.equals("otro")){
            solucion = "G3";
        }
        if(valor.equals("G1")){
            solucion = "G1";
        } 
        if(valor.equals("G2")){
            solucion = "G2";
        }
        if(valor.equals("G3")){
            solucion = "G3";
        }
        return solucion;
    }
    
    public static String desolveSiglaPerfil(String valor){
        String solucion = "";
        if(valor.equals("Administrador")){
            solucion = "P1";
        } else if(valor.equals("Administradora")){
            solucion = "P1";
        }
        if(valor.equals("Rectoria")){
            solucion = "P2";
        } else if(valor.equals("Rector")){
            solucion = "P2";
        } else if(valor.equals("Rectora")){
            solucion = "P2";
        }
        if(valor.equals("Secretaria")){
            solucion = "P3";
        } else if(valor.equals("Secretario")){
            solucion = "P3";
        }
        if(valor.equals("Coordinacion")){
            solucion = "P4";
        } else if(valor.equals("Coordinador")){
            solucion = "P4";
        } else if(valor.equals("Coordinadora")){
            solucion = "P4";
        }
        if(valor.equals("Docente")){
            solucion = "P5";
        }
        if(valor.equals("Alumno")){
            solucion = "P6";
        } else if(valor.equals("Estudiante")){
            solucion = "P6";
        }
        if(valor.equals("Acudiente")){
            solucion = "P7";
        }
        if(valor.equals("Egresado")){
            solucion = "P8";
        } else if(valor.equals("Egresada")){
            solucion = "P8";
        }
        if(valor.equals("Empleado")){
            solucion = "P9";
        } else if(valor.equals("Empleada")){
            solucion = "P9";
        }
        if(valor.equals("P1")){
            solucion = "P1";
        }
        if(valor.equals("P2")){
            solucion = "P2";
        }
        if(valor.equals("P3")){
            solucion = "P3";
        }
        if(valor.equals("P4")){
            solucion = "P4";
        }
        if(valor.equals("P5")){
            solucion = "P5";
        }
        if(valor.equals("P6")){
            solucion = "P6";
        }
        if(valor.equals("P7")){
            solucion = "P7";
        }
        if(valor.equals("P8")){
            solucion = "P8";
        }
        if(valor.equals("P9")){
            solucion = "P9";
        }
        return solucion;
    }
}
