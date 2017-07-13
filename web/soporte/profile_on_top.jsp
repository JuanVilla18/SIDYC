<%@page import="java.awt.Image"%>
<%@page import="java.util.*" session="true" %>
<%
HttpSession sesion = request.getSession();
String nombre_1 = (String) sesion.getAttribute("sessionUserNombre_1");
String nombre_2 = (String) sesion.getAttribute("sessionUserNombre_2");
String apellido_1 = (String) sesion.getAttribute("sessionUserApellido_1");
String apellido_2 = (String) sesion.getAttribute("sessionUserApellido_2");
String progresoPerfil = (String) sesion.getAttribute("valuePerfilProgreso");
String numeroDocumento = (String) sesion.getAttribute("sessionUserNumeroDocumento");
String genero = (String) sesion.getAttribute("sessionUserGenero");
%>
<!-- top navigation -->
<div class="top_nav">
    <div class="nav_menu">
        <nav>
            <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <img src="./imagenPerfil" alt=""><%=nombre_1 + " " + nombre_2 + " " + apellido_1 + " " + apellido_2 %>
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                        <li>
                            <a href="./Perfil">
                                <span>Perfil</span>
                                <span class="badge bg-red pull-right"><%=progresoPerfil%>%</span>
                            </a>
                        </li>
                        <li><a href="./Configuracion">Configuración</a></li>
                        <li><a href="./Soporte">Ayuda</a></li>
                        <li><a href="./Salir"><i class="fa fa-sign-out pull-right"></i>Cerrar Sesión</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</div>
<!-- /top navigation -->