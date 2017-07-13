<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<t:if test="${sessionScope['sessionUserPerfil_interno'] != null}">
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
        <title>SIDYC - Inicio de Sesión</title>

        <!-- Bootstrap -->
        <link href="scripts/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="scripts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="scripts/nprogress/nprogress.css" rel="stylesheet">
        <!-- Animate.css -->
        <link href="scripts/animate.css/animate.min.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="css/custom.min.css" rel="stylesheet">
    </head>

    <body class="login">
        <div>
            <a class="hiddenanchor" id="signup"></a>
            <a class="hiddenanchor" id="signin"></a>

            <div class="login_wrapper">
                <div class="animate form login_form">
                    <section class="login_content">
                        <p style="color: #ff0000"><t:if test="${sessionScope['error'] != null}">
                                ${sessionScope['error']}
                            </p>
                            </t:if>
                        <form action="./LogInUser" method="POST">
                            <h1>Inicio de Sesión</h1>
                            <div>
                                <input id="txtusuario" name="txtusuario" type="text" class="form-control" placeholder="Usuario" required/>
                            </div>
                            <div>
                                <input id="txtpassword" name="txtpassword" type="password" class="form-control" placeholder="Contraseña" required/>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-default submit" >Iniciar Sesión</button>
                                <button id="reset-password" class="btn btn-default submit" onclick="">¿Olvidaste tu contraseña?</button>
                            </div>
                            <div class="clearfix"></div>

                            <div class="separator">
                                <div class="clearfix"></div>
                                <br />
                                <div>
                                    <h1><i class="fa fa-file-text-o"></i> SIDYC</h1>
                                    <p>©2017 Todos los Derechos Reservados.</p>
                                </div>
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </body>
</html>