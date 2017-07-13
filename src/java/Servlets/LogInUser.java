/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Entidades.Usuario;
import Negocio.NegUsuario;
import Utilidades.Seguridad;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Juan
 */
public class LogInUser extends HttpServlet {

    Seguridad secure = new Seguridad();
    Usuario entU = new Usuario();
    NegUsuario Nu = new NegUsuario();

    private static final long serialVersionUID = 1L;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Creando una sesion
        HttpSession sesion = request.getSession(true);
        sesion.setMaxInactiveInterval(2400);
        //Recibir parametros de login
        String numero_documento_Log = request.getParameter("txtusuario");
        String password_Log = request.getParameter("txtpassword");
        //Seteando valor de control para el inicio de sesion
        sesion.setAttribute("error", null);
        sesion.setAttribute("sessionUserId_Usuario", null);
        sesion.setAttribute("sessionUserNombre", null);
        sesion.setAttribute("sessionUserApellidos", null);
        sesion.setAttribute("sessionUserCorreo", null);
        sesion.setAttribute("sessionUserNumero_Documento", null);
        sesion.setAttribute("sessionUserPass_Word", null);
        sesion.setAttribute("sessionUserPerfil", null);
        sesion.setAttribute("sessionUserNumero_Contacto", null);
        sesion.setAttribute("sessionUserDirreccion", null);
        sesion.setAttribute("sessionUserBarrio", null);
        sesion.setAttribute("sessionUserId_Genero", null);
        sesion.setAttribute("sessionUserId_Estado", null);
        sesion.setAttribute("sessionUserId_Tipo_Documento", null);
        sesion.setAttribute("sessionUserId_Tipo_Usuario", null);

        //Encapsulando inicio de sesion
        try {
            //Validando usuario
            entU = Nu.ValidarUsuario(numero_documento_Log, password_Log);
            
            System.out.println("log "+ numero_documento_Log);
            System.out.println("log "+ password_Log);
            
            System.out.println("int "+ entU.getNumero_Documento());
            System.out.println("int "+ entU.getPass_Word());
            
            if (secure.isUsernameOrPasswordValid(numero_documento_Log) == true && secure.isUsernameOrPasswordValid(password_Log) == true) {
                
                System.out.println("Validos");
                
                if (entU.getNumero_Documento().equals(numero_documento_Log) && entU.getPass_Word().equals(password_Log)) {
                    //Inicializar variables de validacion
                    String mensaje_bienvenida = null;
                    int estado = entU.getId_Estado();
                    //Validando estado en activo para el usuario
                    if (estado == 1) {
                        //Setenado parametro de control
                        sesion.setAttribute("error", "Sesión Iniciada");
                        //Seteando variables desde la entidad
                        String Numero_Documento = entU.getNumero_Documento();
                        String Nombres = entU.getNombre() + " " +entU.getApellidos();
                        
                        
                        //Seteando variables desde la entidad
                        int Id_Usuario = entU.getId_Usuario();
                        String Nombre = entU.getNombre();
                        String Apellidos = entU.getApellidos();
                        String Correo = entU.getCorreo();
                        String Numero_Contacto = entU.getNumero_Contacto();
                        String Perfil_Interno = "";
                        String Direccion = entU.getDireccion();
                        String Barrio = entU.getBarrio();
                        int Id_Genero = entU.getId_Genero();
                        int Id_Estado = entU.getId_Estado();
                        int Id_Tipo_Documento = entU.getId_Tipo_Documento();
                        int Id_Tipo_Usuario = entU.getId_Tipo_Usuario();
                        
                        //Seteando mensaje de bienvenida
                        if (Id_Genero == 1) {
                            mensaje_bienvenida = "Bienvenido";
                        } else if (Id_Genero == 2) {
                            mensaje_bienvenida = "Bienvenida";
                        } else {
                            mensaje_bienvenida = "Bienvenid@";
                        }
                        
                        //Setenado mensaje de bienvenida
                        sesion.setAttribute("mensaje", mensaje_bienvenida);
                        //Seteando variables de sesion
                        sesion.setAttribute("sessionUserId_Usuario", Id_Usuario);
                        sesion.setAttribute("sessionUserNombre", Nombre);
                        sesion.setAttribute("sessionUserNombres", Nombres);
                        sesion.setAttribute("sessionUserApellidos", Apellidos);
                        sesion.setAttribute("sessionUserCorreo", Correo);
                        sesion.setAttribute("sessionUserNumero_Documento", Numero_Documento);
                        
                        if (Id_Tipo_Usuario == 1 && Id_Genero == 1) {
                            Perfil_Interno = "Administrador";
                        } else if (Id_Tipo_Usuario == 1 && Id_Genero == 2) {
                            Perfil_Interno = "Administradora";
                        } else if (Id_Tipo_Usuario == 1 && Id_Genero == 3) {
                            Perfil_Interno = "Administrador(a)";
                        } else if (Id_Tipo_Usuario == 2 && Id_Genero == 1) {
                            Perfil_Interno = "Usuario";
                        } else if (Id_Tipo_Usuario == 2 && Id_Genero == 2) {
                            Perfil_Interno = "Usuaria";
                        } else if (Id_Tipo_Usuario == 2 && Id_Genero == 3) {
                            Perfil_Interno = "Usuari@";
                        } else {
                            Perfil_Interno = "Error";
                        }
                        
                        sesion.setAttribute("sessionUserPerfil_Interno", Perfil_Interno);
                        sesion.setAttribute("sessionUserNumero_Contacto", Numero_Contacto);
                        sesion.setAttribute("sessionUserDirreccion", Direccion);
                        sesion.setAttribute("sessionUserBarrio", Barrio);
                        sesion.setAttribute("sessionUserId_Genero", Id_Genero);
                        sesion.setAttribute("sessionUserId_Estado", Id_Estado);
                        sesion.setAttribute("sessionUserId_Tipo_Documento", Id_Tipo_Documento);
                        sesion.setAttribute("sessionUserId_Tipo_Usuario", Id_Tipo_Usuario);
                        
                        response.sendRedirect("Home");
                    } else {
                        //Si usuario es no activo
                        sesion.setAttribute("error", "Su usuario esta inactivo, comuniquese con un secretario");
                        response.sendRedirect("Home");
                    }
                } else {
                    //Si usuario o contraseña es incorrecto
                    sesion.setAttribute("error", "Usuario o contraseña incorrecto");
                    response.sendRedirect("Home");
                }
            } else {
                sesion.setAttribute("error", "Estas usando caracteres no permitidos por seguridad");
                response.sendRedirect("Home");
            }
        } catch (Exception e) {
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}