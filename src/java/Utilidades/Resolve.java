package Utilidades;

public class Resolve {

    public static String resolveSiglaTipoDocumento(String tipo, String valor) {
        String solucion = null;
        if (tipo.equals("T")) {
            if (valor == null) {
                solucion = null;
            }
            else {
                if (valor.equals("T1")) {
                    solucion = "Cédula de Ciudadanía";
                }
                if (valor.equals("T2")) {
                    solucion = "Cédula de Extranjería";
                }
                if (valor.equals("T3")) {
                    solucion = "Carné Diplomatico";
                }
                if (valor.equals("T4")) {
                    solucion = "Tarjeta de Identidad";
                }
                if (valor.equals("T5")) {
                    solucion = "Pasaporte";
                }
                if (valor.equals("T6")) {
                    solucion = "Registro Civil de Nacimiento";
                }
                if (valor.equals("T7")) {
                    solucion = "N.U.I.P.";
                }
            }
        }
        return solucion;
    }

    public static String ResolveSiglaPerfil(String tipo, String valor, String genero) {
        String solucion = null;
        if (tipo.equals("P")) {
            if (valor == null) {
                solucion = null;
            }
            else {
                if (valor.equals("P1")) {
                    switch (genero) {
                        case "G1":
                            solucion = "Administrador";
                            break;
                        case "G2":
                            solucion = "Administradora";
                            break;
                        default:
                            solucion = "Administrador";
                            break;
                    }
                }
                if (valor.equals("P2")) {
                    switch (genero) {
                        case "G1":
                            solucion = "Rector";
                            break;
                        case "G2":
                            solucion = "Rectora";
                            break;
                        default:
                            solucion = "Rectoria";
                            break;
                    }
                }
                if (valor.equals("P3")) {
                    switch (genero) {
                        case "G1":
                            solucion = "Secretario";
                            break;
                        case "G2":
                            solucion = "Secretaria";
                            break;
                        default:
                            solucion = "Secretaria";
                            break;
                    }
                }
                if (valor.equals("P4")) {
                    switch (genero) {
                        case "G1":
                            solucion = "Coordinador";
                            break;
                        case "G2":
                            solucion = "Coordinadora";
                            break;
                        default:
                            solucion = "Coordinacion";
                            break;
                    }
                }
                if (valor.equals("P5")) {
                    solucion = "Docente";
                }
                if (valor.equals("P6")) {
                    solucion = "Estudiante";
                }
                if (valor.equals("P7")) {
                    solucion = "Acudiente";
                }
                if (valor.equals("P8")) {
                    switch (genero) {
                        case "G1":
                            solucion = "Egresado";
                            break;
                        case "G2":
                            solucion = "Egresada";
                            break;
                        default:
                            solucion = "Egresado";
                            break;
                    }
                }
                if (valor.equals("P9")) {
                    switch (genero) {
                        case "G1":
                            solucion = "Empleado";
                            break;
                        case "G2":
                            solucion = "Empleada";
                            break;
                        default:
                            solucion = "Empleado";
                            break;
                    }
                }
            }
        }
        return solucion;
    }

    public static String ResolveGenero(String tipo, String valor) {
        String solucion = null;
        if (tipo.equals("G")) {
            if (valor == null) {
                solucion = null;
            }
            else {
                switch (valor) {
                    case "G1":
                        solucion = "Masculino";
                        break;
                    case "G2":
                        solucion = "Femenino";
                        break;
                    case "G3":
                        solucion = "Otro";
                        break;
                    default:
                        break;
                }
            }
        }
        return solucion;
    }

    public static String ResolveEstadoMatricula(String tipo, String valor) {
        String solucion = null;
        if (tipo.equals("E")) {
            if (valor == null) {
                solucion = null;
            }
            else {
                switch (valor) {
                    case "E1":
                        solucion = "Matriculado";
                        break;
                    case "E2":
                        solucion = "Retirado";
                        break;
                }
            }
        }
        return solucion;
    }

    public static String ResolveEstado(String tipo, String valor) {
        String solucion = null;
        if (tipo.equals("E")) {
            if (valor == null) {
                solucion = null;
            }
            else {
                switch (valor) {
                    case "E1":
                        solucion = "Activo";
                        break;
                    case "E2":
                        solucion = "Inactivo";
                        break;
                }
            }
        }
        return solucion;
    }

    public static String ResolveParentesco(String tipo, String valor) {
        String solucion = null;
        if (tipo.equals("PA")) {
            if (valor == null) {
                solucion = null;
            }
            else {
                if (valor.equals("PA1")) {
                    solucion = "Madre";
                }
                if (valor.equals("PA2")) {
                    solucion = "Padre";
                }
                if (valor.equals("PA3")) {
                    solucion = "Tío";
                }
                if (valor.equals("PA4")) {
                    solucion = "Tía";
                }
                if (valor.equals("PA5")) {
                    solucion = "Abuelo";
                }
                if (valor.equals("PA6")) {
                    solucion = "Abluela";
                }
                if (valor.equals("PA7")) {
                    solucion = "Hermano";
                }
                if (valor.equals("PA8")) {
                    solucion = "Autorizado";
                }
            }
        }
        return solucion;
    }
}
