<%@page import="java.util.*" session="true" %>  
<%
    HttpSession sesion = request.getSession();
    String perfil = (String) sesion.getAttribute("sessionUserPerfil");
    String añadir = "N";
%>
<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <div class="menu_section" style="">
        <h3>General</h3>
        <ul class="nav side-menu">
            <li><a href="./Home"><i class="fa fa-laptop"></i> Inicio </a></li>
        </ul>
        <!--        <ul class="nav side-menu">
                    <li><a href="matriculas.jsp"><i class="fa fa-child"></i> Matriculas </a></li>
                </ul>-->
        <ul class="nav side-menu">
            <li>
                <a>
                    <i class="fa fa-user"></i>Usuarios<span class="fa fa-chevron-down"></span>
                </a>
                <ul class="nav child_menu">
                    <li><a href="./Usuarios">Gestión Usuarios</a></li>
                    <li><a href="./UsuariosListar">Ver Usuarios</a></li>
                </ul>
            </li>
        </ul>
        <ul class="nav side-menu">
            <li>
                <a>
                    <i class="fa fa-soccer-ball-o"></i>Prestamos<span class="fa fa-chevron-down"></span>
                </a>
                <ul class="nav child_menu">
                    <li><a href="./Matriculas">Gestión Prestamos</a></li>
                    <li><a href="#">Ver Prestamos</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- /menu footer buttons -->
    <div class="sidebar-footer hidden-small">
        <a data-toggle="tooltip" data-placement="top" title="Configuraciones" href="./Configuracion">
            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="Pantalla Completa" href="#pantallaCompleta" id="full">
            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="Bloquear">
            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="Cerrar Sesión" href="./Salir">
            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
        </a>
    </div>
    <!-- /menu footer buttons -->
</div>
<!-- /sidebar menu -->

<!-- Pantalla Completa -->
<script>
    pantallaCompleta = function(e){
        if (e.webkitRequestFullScreen) {
            e.webkitRequestFullScreen();
          } else if(e.mozRequestFullScreen) {
            e.mozRequestFullScreen();
          }
    }
    document.getElementById('full').onclick = function(){
        pantallaCompleta(document.getElementById('body'));
        return false;
    }
</script>
<!-- /Pantalla Completa-->
