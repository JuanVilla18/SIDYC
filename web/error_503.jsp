<%-- 
    Document   : error_500
    Created on : 11/09/2016, 02:53:51 PM
    Author     : Administrador
--%>

<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<t:if test="${sessionScope['sessionUserPerfil'] == null}">
    <%
        response.sendRedirect("index.jsp");
    %> 
</t:if>

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

        <title>Error 503 - Tenemos Problemas</title>

        <!-- Bootstrap -->
        <link href="scripts/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="scripts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="scripts/nprogress/nprogress.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="css/custom.min.css" rel="stylesheet">
    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <!-- page content -->
                <div class="col-md-12">
                    <div class="col-middle">
                        <div class="text-center">
                            <h1 class="error-number">Error 503</h1>
                            <h2>Hemos perdido comunicación</h2>
                            <h5><p>Nuestro servidor no encuentra lo que buscas o esta ocupado en mantenimiento. Se trata de un error? <a href="report.jsp">Reportalo.</a></h5>
                            </p>
                            <div class="mid_center">
                                <h3>Buscar</h3>
                                <form>
                                    <div class="col-xs-12 form-group pull-right top_search">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Buscar">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->
            </div>
        </div>

        <!-- jQuery -->
        <script src="scripts/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="scripts/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="scripts/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="scripts/nprogress/nprogress.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="js/custom.min.js"></script>
    </body>
</html>