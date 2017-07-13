<%@page import="Negocio.NegUsers"%>
<%@page import="java.util.*" session="true"%>
<%-- 
    Document   : index
    Created on : 27/08/2016, 03:32:21 PM
    Author     : Juan
--%>
<%
    NegUsers nU = new NegUsers();
    HttpSession sesion = request.getSession();
    String perfil = (String) sesion.getAttribute("sessionUserPerfil");
    String numero_usuarios = nU.getNumeroUsuarios();
    String numero_usuarios_hombres = nU.getNumeroUsuariosHombres();
    String numero_usuarios_mujeres = nU.getNumeroUsuariosMujeres();
    String numero_alumnos = nU.getNumeroAlumnos();
%>
<%if(perfil.equals("P1")){%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <link rel="icon" type="image/png" href="imagenes/honor.png" />
        <link rel="shortcut icon" href="imagenes/honor.png" type="image/x-icon" />
        <link href="imagenes/honor.png" rel="icon" type="image/x-icon" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SINIELI - I.E. La Independencia</title>

        <!-- Bootstrap -->
        <link href="scripts/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="scripts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="scripts/nprogress/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="scripts/iCheck/skins/flat/green.css" rel="stylesheet">
        <!-- bootstrap-progressbar -->
        <link href="scripts/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <!-- JQVMap -->
        <link href="scripts/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>

        <!-- Custom Theme Style -->
        <link href="css/custom.min.css" rel="stylesheet">
    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <jsp:include page="title_app.jsp"></jsp:include>
                            <div class="clearfix"></div>
                        <jsp:include page="info_perfil.jsp"></jsp:include>
                            <br />
                        <jsp:include page="menu.jsp"></jsp:include>
                            <!-- /menu footer buttons -->
                            <div class="sidebar-footer hidden-small">
                                <a data-toggle="tooltip" data-placement="top" title="Configuraciones">
                                    <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                                </a>
                                <a data-toggle="tooltip" data-placement="top" title="Pantalla Completa" href="javascript:pantallacompleta('dashboard.jsp')">
                                    <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                                </a>
                                <a data-toggle="tooltip" data-placement="top" title="Bloquear">
                                    <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                                </a>
                                <a data-toggle="tooltip" data-placement="top" title="Salir" href="salir.jsp">
                                    <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                                </a>
                            </div>
                            <!-- /menu footer buttons -->
                        </div>
                    </div>
                <jsp:include page="profile_on_top.jsp"></jsp:include>
                    <!-- page content -->
                    <div class="right_col" role="main">
                        <!-- top tiles -->
                        <div class="row tile_count">
                            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                                <span class="count_top"><i class="fa fa-user"></i> Usuarios</span>
                                <div class="count green"><%=numero_usuarios%></div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-user"></i> Total Alumnos</span>
                            <div class="count"><%=numero_alumnos%></div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-user"></i> Total Hombres</span>
                            <div class="count"><%=numero_usuarios_hombres%></div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-user"></i> Total Mujeres</span>
                            <div class="count"><%=numero_usuarios_mujeres%></div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-file-text-o"></i> Total Planillas</span>
                            <div class="count">280</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-refresh"></i> Total Conexiones</span>
                            <div class="count">1.325</div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>

        <!-- /page content -->



        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
        <!-- jQuery -->
        <script src="scripts/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="scripts/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="js/custom.min.js"></script>

        <script language="JavaScript">
            function pantallacompleta(pagina)
            {
                var opciones = ("toolbar=no,location=no, directories=no, status=no, menubar=no ,scrollbars=no, resizable=no,fullscreen=yes");
                window.open(pagina, "", opciones);
            }
        </script>
    </body>
</html>
<%} else {
    response.sendRedirect("./Home");
}%>