<%@page import="java.awt.Image"%>
<%@page import="java.util.*" session="true" %>
<%
HttpSession sesion = request.getSession();
String nombres = (String) sesion.getAttribute("sessionUserNombres");
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
                        <img src="imagenes/user.png" alt=""><%=nombres%>
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                        <li>
                            <a href="./Perfil">
                                <span>Perfil</span>
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