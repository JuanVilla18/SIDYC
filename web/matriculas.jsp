<%-- 
    Document   : matriculas
    Created on : 11/09/2016, 11:17:27 AM
    Author     : Administrador
--%>
<%@page import="Entidades.Estudiante"%>
<%@page import="Entidades.Notificaciones"%>
<%@page import="Utilidades.Resolve"%>
<%@page import="java.util.*" session="true"%>
<%@page import="Negocio.NegTipo_Documento"%>
<%@page import="Entidades.Tipo_Documento"%>
<%@page import="Negocio.NegUsers"%>
<%@page import="Entidades.Persona"%>
<%@page import="Negocio.NegPerfil"%>
<%@page import="Entidades.Perfil"%>
<%@page import="java.util.ArrayList"%>

<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<t:if test="${sessionScope['sessionUserPerfil'] == null}">
    <%
        response.sendRedirect("./Home");
    %>
</t:if>


<%
    Persona persona = new Persona();
    Persona personaEstudiante = new Persona();
    Estudiante estudiante = new Estudiante();
    ArrayList<Tipo_Documento> LTD = new ArrayList<>();
    ArrayList<Perfil> LP = new ArrayList<>();
    NegTipo_Documento NTD = new NegTipo_Documento();
    NegPerfil NP = new NegPerfil();
    LTD = NTD.getListado();
    LP = NP.getListado();

    String checkedestado1 = "";
    String checkedestado2 = "";

    String checkedgenero1 = "";
    String checkedgenero2 = "";
    String checkedgenero3 = "";

    String autofocusdocumento = "";
    String autofocusnombre = "";

    String numero_documento_persona = request.getParameter("txtnumerodocumento");
    String nombres = request.getParameter("txtnombre");
    String apellido_1 = request.getParameter("txtapellido1");
    String apellido_2 = request.getParameter("txtapellido2");
    String tipo_documento = request.getParameter("cbotipodocumento");
    String estado = request.getParameter("estado");
    String correo = request.getParameter("txtcorreo");
    String genero = request.getParameter("genero");
    String direccion = request.getParameter("txtdireccion");
    String fecha_nacimiento = request.getParameter("cafechanacimiento");
    String barrio = request.getParameter("txtbarrio");
    String numero_contacto = request.getParameter("txtnumerocontacto");
    String fecharegistro = request.getParameter("txtfecharegistro");

    String mensajeTitulo = (String) request.getAttribute("mensajeTitulo") != null ? (String) request.getAttribute("mensajeTitulo") : " ";
    String mensajeContenido = (String) request.getAttribute("mensajeContenido") != null ? (String) request.getAttribute("mensajeContenido") : " ";
    String mensajeTipo = (String) request.getAttribute("mensajeTipo") != null ? (String) request.getAttribute("mensajeTipo") : " ";

    persona = (Persona) request.getAttribute("datos") != null ? (Persona) request.getAttribute("datos") : null;
    personaEstudiante = (Persona) request.getAttribute("datosEstudiante") != null ? (Persona) request.getAttribute("datosEstudiante") : null;

    if (persona != null) {
        numero_documento_persona = persona.getNumero_documento_persona();
        nombres = persona.getNombres();
        apellido_1 = persona.getApellido_1();
        apellido_2 = persona.getApellido_2();
        tipo_documento = persona.getTipo_documento();
        estado = persona.getEstado();
        correo = persona.getCorreo();
        genero = persona.getGenero();
        direccion = persona.getDireccion();
        fecha_nacimiento = persona.getFecha_nacimiento();
        barrio = persona.getBarrio();
        numero_contacto = persona.getNumero_contacto();
        fecharegistro = persona.getFecha_registro();
        estudiante = persona.getEstudiante();
    }

    if (numero_documento_persona != null && numero_documento_persona != "" && numero_documento_persona != "*" && numero_documento_persona != " ") {
        autofocusdocumento = "";
        autofocusnombre = "autofocus";
    }
    else {
        autofocusdocumento = "autofocus";
        autofocusnombre = "";
    }
%>

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
        <title>Acudientes - I.E. La Independencia</title>

        <!-- Bootstrap -->
        <link href="scripts/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="scripts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- PNotify -->
        <link href="scripts/pnotify/dist/pnotify.css" rel="stylesheet">
        <link href="scripts/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
        <link href="scripts/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="scripts/iCheck/skins/flat/green.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="scripts/nprogress/nprogress.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="css/custom.min.css" rel="stylesheet">
    </head>
    <body class="nav-md" id="body">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <jsp:include page="title_app.jsp"></jsp:include>
                            <div class="clearfix"></div>
                        <jsp:include page="info_perfil.jsp"></jsp:include>
                            <br />
                        <jsp:include page="menu.jsp"></jsp:include>
                        </div>
                    </div>
                <jsp:include page="profile_on_top.jsp"></jsp:include>
                    <!-- page content -->
                    <div class="right_col" role="main">
                        <div class="">
                            <div class="page-title">
                                <div class="title_left">
                                    <h3>Gestion de Estudiantes</h3>
                                </div>
                            <jsp:include page="search.jsp"></jsp:include>
                            </div>
                            <div class="clearfix"></div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Acudiente</h2>
                                            <ul class="nav navbar-right panel_toolbox">
                                                <li>
                                                    <a class="collapse-link">
                                                        <i class="fa fa-chevron-up"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <form class="form-horizontal form-label-left" id="usuariosform" method="POST" action="./Matriculas">
                                                <input type="text" id="titulomensaje" name="titulomensaje" value="<%=mensajeTitulo%>" style="display: none;">
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Numero Documento <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="number" id="txtnumerodocumento" name="txtnumerodocumento" value="<%=numero_documento_persona != null ? numero_documento_persona : ""%>" required="required" data-validate-length-range="9,15" class="form-control col-md-7 col-xs-12" onkeypress="return BuscarEnter(event)" <%=autofocusdocumento%>>
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombre <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtnombre" name="txtnombre" value="<%=nombres != null ? nombres : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" required="required" type="text" onmousedown="ExecuteBuscado()" <%=autofocusnombre%>>
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="apellido1">Primer Apellido <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtapellido1" name="txtapellido1" value="<%=apellido_1 != null ? apellido_1 : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" required="required" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="apellido2">Segundo Apellido
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtapellido2" name="txtapellido2" value="<%=apellido_2 != null ? apellido_2 : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tipo_documento">Tipo Documento <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <select id="cbotipodocumento" name="cbotipodocumento" required="required" class="form-control col-md-7 col-xs-12">
                                                        <option value="<%=Resolve.resolveSiglaTipoDocumento("T", tipo_documento) != null ? Resolve.resolveSiglaTipoDocumento("T", tipo_documento) : ""%>"><%=Resolve.resolveSiglaTipoDocumento("T", tipo_documento) != null ? Resolve.resolveSiglaTipoDocumento("T", tipo_documento) : "Seleccione"%></option>
                                                        <%if (LTD != null) {%>
                                                        <%for (Tipo_Documento TD : LTD) {%>
                                                        <option value="<%=TD.getCodigo_tipo_documento()%>"><%=TD.getNombre_tipo_documento()%></option>
                                                        <%}%>
                                                        <%}%>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label for="state" class="control-label col-md-3 col-sm-3 col-xs-12">Genero *</label>&nbsp;&nbsp;
                                                <%
                                                    if (genero == null) {
                                                        checkedgenero1 = "";
                                                        checkedgenero2 = "";
                                                        checkedgenero3 = "";
                                                    }
                                                    else {
                                                        if (genero.equals("G1")) {
                                                            checkedgenero1 = "checked=\"checked\"";
                                                            checkedgenero2 = "";
                                                            checkedgenero3 = "";
                                                        }
                                                        if (genero.equals("G2")) {
                                                            checkedgenero1 = "";
                                                            checkedgenero2 = "checked=\"checked\"";
                                                            checkedgenero3 = "";
                                                        }
                                                        if (genero.equals("G3")) {
                                                            checkedgenero1 = "";
                                                            checkedgenero2 = "";
                                                            checkedgenero3 = "checked=\"checked\"";
                                                        }
                                                    }
                                                %>
                                                <input type="radio" name="genero" value="masculino" required="required" <%=checkedgenero1%>/> Masculino&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="genero" value="femenino" <%=checkedgenero2%>/> Femenino&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="genero" value="otro" <%=checkedgenero3%>/> Otro
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Fecha de Nacimiento <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="cafechanacimiento" name="cafechanacimiento" value="<%=fecha_nacimiento != null ? fecha_nacimiento : ""%>" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Correo
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="email" id="txtcorreo" name="txtcorreo" value="<%=correo != null ? correo : ""%>" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label for="state" class="control-label col-md-3 col-sm-3 col-xs-12">Estado *</label>&nbsp;&nbsp;
                                                <%
                                                    if (estado == null) {
                                                        checkedestado1 = "";
                                                        checkedestado2 = "";
                                                    }
                                                    else {
                                                        if (estado.equals("E1")) {
                                                            checkedestado1 = "checked=\"checked\"";
                                                            checkedestado2 = "";
                                                        }
                                                        if (estado.equals("E2")) {
                                                            checkedestado1 = "";
                                                            checkedestado2 = "checked=\"checked\"";
                                                        }
                                                    }
                                                %>
                                                <input type="radio" name="estado" value="activo" required="required" <%=checkedestado1%>/> Activo&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="estado" value="inactivo" <%=checkedestado2%>/> Inactivo
                                                <% System.out.println(Resolve.ResolveEstado("E", estado));%>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="direccion">Dirección <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtdireccion" name="txtdireccion" value="<%=direccion != null ? direccion : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" name="name" required="required" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="barrio">Barrio <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtbarrio" name="txtbarrio" value="<%=barrio != null ? barrio : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" required="required" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telefono">Telefono <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="tel" id="txtnumerocontacto" name="txtnumerocontacto" value="<%=numero_contacto != null ? numero_contacto : ""%>" required="required" data-validate-length-range="5,20" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <%if (fecharegistro != "" && fecharegistro != null) {%>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fecharegistro">Fecha Registro
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="txtfecharegistro" name="txtfecharegistro" value="<%=fecharegistro != null ? fecharegistro : ""%>  (Año-Mes-Dia)" class="form-control col-md-7 col-xs-12" disabled>
                                                </div>
                                            </div>
                                            <%}%>
                                            <div class="ln_solid"></div>
                                            <h2>Estudiante</h2>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Numero Documento <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="number" id="txtnumerodocumento" name="txtnumerodocumento" value="<%=numero_documento_persona != null ? numero_documento_persona : ""%>" required="required" data-validate-length-range="9,15" class="form-control col-md-7 col-xs-12" onkeypress="return BuscarEnter(event)" <%=autofocusdocumento%>>
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombre <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtnombre" name="txtnombre" value="<%=nombres != null ? nombres : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" required="required" type="text" onmousedown="ExecuteBuscado()" <%=autofocusnombre%>>
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="apellido1">Primer Apellido <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtapellido1" name="txtapellido1" value="<%=apellido_1 != null ? apellido_1 : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" required="required" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="apellido2">Segundo Apellido
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtapellido2" name="txtapellido2" value="<%=apellido_2 != null ? apellido_2 : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tipo_documento">Tipo Documento <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <select id="cbotipodocumento" name="cbotipodocumento" required="required" class="form-control col-md-7 col-xs-12">
                                                        <option value="<%=Resolve.resolveSiglaTipoDocumento("T", tipo_documento) != null ? Resolve.resolveSiglaTipoDocumento("T", tipo_documento) : ""%>"><%=Resolve.resolveSiglaTipoDocumento("T", tipo_documento) != null ? Resolve.resolveSiglaTipoDocumento("T", tipo_documento) : "Seleccione"%></option>
                                                        <%if (LTD != null) {%>
                                                        <%for (Tipo_Documento TD : LTD) {%>
                                                        <option value="<%=TD.getCodigo_tipo_documento()%>"><%=TD.getNombre_tipo_documento()%></option>
                                                        <%}%>
                                                        <%}%>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label for="state" class="control-label col-md-3 col-sm-3 col-xs-12">Genero *</label>&nbsp;&nbsp;
                                                <%
                                                    if (genero == null) {
                                                        checkedgenero1 = "";
                                                        checkedgenero2 = "";
                                                        checkedgenero3 = "";
                                                    }
                                                    else {
                                                        if (genero.equals("G1")) {
                                                            checkedgenero1 = "checked=\"checked\"";
                                                            checkedgenero2 = "";
                                                            checkedgenero3 = "";
                                                        }
                                                        if (genero.equals("G2")) {
                                                            checkedgenero1 = "";
                                                            checkedgenero2 = "checked=\"checked\"";
                                                            checkedgenero3 = "";
                                                        }
                                                        if (genero.equals("G3")) {
                                                            checkedgenero1 = "";
                                                            checkedgenero2 = "";
                                                            checkedgenero3 = "checked=\"checked\"";
                                                        }
                                                    }
                                                %>
                                                <input type="radio" name="genero" value="masculino" required="required" <%=checkedgenero1%>/> Masculino&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="genero" value="femenino" <%=checkedgenero2%>/> Femenino&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="genero" value="otro" <%=checkedgenero3%>/> Otro
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Fecha de Nacimiento <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="cafechanacimiento" name="cafechanacimiento" value="<%=fecha_nacimiento != null ? fecha_nacimiento : ""%>" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Correo
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="email" id="txtcorreo" name="txtcorreo" value="<%=correo != null ? correo : ""%>" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label for="state" class="control-label col-md-3 col-sm-3 col-xs-12">Estado *</label>&nbsp;&nbsp;
                                                <%
                                                    if (estado == null) {
                                                        checkedestado1 = "";
                                                        checkedestado2 = "";
                                                    }
                                                    else {
                                                        if (estado.equals("E1")) {
                                                            checkedestado1 = "checked=\"checked\"";
                                                            checkedestado2 = "";
                                                        }
                                                        if (estado.equals("E2")) {
                                                            checkedestado1 = "";
                                                            checkedestado2 = "checked=\"checked\"";
                                                        }
                                                    }
                                                %>
                                                <input type="radio" name="estado" value="activo" required="required" <%=checkedestado1%>/> Activo&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="estado" value="inactivo" <%=checkedestado2%>/> Inactivo
                                                <% System.out.println(Resolve.ResolveEstado("E", estado));%>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="direccion">Dirección <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtdireccion" name="txtdireccion" value="<%=direccion != null ? direccion : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" name="name" required="required" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="barrio">Barrio <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="txtbarrio" name="txtbarrio" value="<%=barrio != null ? barrio : ""%>" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="name" required="required" type="text">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telefono">Telefono <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="tel" id="txtnumerocontacto" name="txtnumerocontacto" value="<%=numero_contacto != null ? numero_contacto : ""%>" required="required" data-validate-length-range="5,20" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <%if (fecharegistro != "" && fecharegistro != null) {%>
                                            <div class="item form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fecharegistro">Fecha Registro
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="txtfecharegistro" name="txtfecharegistro" value="<%=fecharegistro != null ? fecharegistro : ""%>  (Año-Mes-Dia)" class="form-control col-md-7 col-xs-12" disabled>
                                                </div>
                                            </div>
                                            <%}%>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-md-offset-3">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <button id="save" type="submit" class="btn btn-primary" name ="action" value="save">Guardar</button>
                                                                <button id="search" type="submit" class="btn btn-success" name ="action" value="search" formnovalidate>Buscar</button>
                                                                <button id="edit" type="submit" class="btn btn-success" name ="action" value="edit">Actualizar</button>
                                                                <button type="button" class="btn btn-warning" data-toggle="modal" data-target=".bs-example-modal-lg">Eliminar</button>
                                                                <button id="cancel" type="submit" class="btn btn-danger"  name ="action" value="cancel" formnovalidate>Cancelar</button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">

                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                                </button>
                                                                <h4 class="modal-title" id="myModalLabel">Advertencia</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <h4>Eliminar</h4>
                                                                <p>Estas seguro que deseas eliminar este Acudiente?</p>
                                                                <p>-Esta operación no se puede deshacer</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                                <button id="delete" type="submit" class="btn btn-danger" name ="action" value="delete">Confirmar</button>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <button id="lanzador" style="display: none;" onclick="new PNotify({
                                                    title: '<%=mensajeTitulo%>',
                                                    text: '<%=mensajeContenido%>',
                                                    type: '<%=mensajeTipo%>',
                                                    styling: 'bootstrap3'
                                                });"
                                                >Lanzador</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->
                <jsp:include page="footer.jsp"></jsp:include>
            </div>
        </div>

        <!-- jQuery -->
        <script src="scripts/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="scripts/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="js/moment/moment.min.js"></script>
        <script src="js/datepicker/daterangepicker.js"></script>
        <!-- FastClick -->
        <script src="scripts/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="scripts/nprogress/nprogress.js"></script>
        <!-- validator -->
        <script src="scripts/validator/validator.js"></script>
        <!-- iCheck -->
        <script src="scripts/iCheck/icheck.min.js"></script>
        <!-- PNotify -->
        <script src="scripts/pnotify/dist/pnotify.js"></script>
        <script src="scripts/pnotify/dist/pnotify.buttons.js"></script>
        <script src="scripts/pnotify/dist/pnotify.nonblock.js"></script>
        <!-- Datatables -->
        <script src="scripts/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="scripts/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <script src="scripts/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="scripts/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
        <script src="scripts/datatables.net-buttons/js/buttons.flash.min.js"></script>
        <script src="scripts/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="scripts/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="scripts/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
        <script src="scripts/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
        <script src="scripts/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="scripts/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
        <script src="scripts/datatables.net-scroller/js/datatables.scroller.min.js"></script>
        <script src="scripts/jszip/dist/jszip.min.js"></script>
        <script src="scripts/pdfmake/build/pdfmake.min.js"></script>
        <script src="scripts/pdfmake/build/vfs_fonts.js"></script>


        <!-- Custom Theme Scripts -->
        <script src="js/custom.min.js"></script>

        <!-- bootstrap-daterangepicker -->
        <script>
                                            $(document).ready(function () {
                                                $('#cafechanacimiento').daterangepicker({singleDatePicker: true, calender_style: "picker_5", showDropdowns: true}, function (start, end, label) {
                                                    console.log(start.toISOString(), end.toISOString(), label);
                                                });
                                            });
        </script>
        <!-- /bootstrap-daterangepicker -->

        <!-- validator -->
        <script>
            // initialize the validator function
            validator.message.date = 'not a real date';

            // validate a field on "blur" event, a 'select' on 'change' event & a '.required' classed multifield on 'keyup':
            $('form')
                    .on('blur', 'input[required], input.optional, select.required', validator.checkField)
                    .on('change', 'select.required', validator.checkField)
                    .on('keypress', 'input[required][pattern]', validator.keypress);

            $('.multi.required').on('keyup blur', 'input', function () {
                validator.checkField.apply($(this).siblings().last()[0]);
            });

            $('form').submit(function (e) {
                e.preventDefault();
                var submit = true;

                // evaluate the form using generic validaing
                if (!validator.checkAll($(this))) {
                    submit = true;
                }

                if (submit)
                    this.submit();

                return false;
            });
        </script>
        <!-- /validator -->

        <!-- Datatables -->
        <script>
            $(document).ready(function () {
                var handleDataTableButtons = function () {
                    if ($("#datatable-buttons").length) {
                        $("#datatable-buttons").DataTable({
                            dom: "Bfrtip",
                            buttons: [
                                {
                                    extend: "copy",
                                    className: "btn-sm"
                                },
                                {
                                    extend: "csv",
                                    className: "btn-sm"
                                },
                                {
                                    extend: "excel",
                                    className: "btn-sm"
                                },
                                {
                                    extend: "pdfHtml5",
                                    className: "btn-sm"
                                },
                                {
                                    extend: "print",
                                    className: "btn-sm"
                                },
                            ],
                            responsive: true
                        });
                    }
                };

                TableManageButtons = function () {
                    "use strict";
                    return {
                        init: function () {
                            handleDataTableButtons();
                        }
                    };
                }();

                $('#datatable').dataTable();

                $('#datatable-keytable').DataTable({
                    keys: true
                });

                $('#datatable-responsive').DataTable();

                $('#datatable-scroller').DataTable({
                    ajax: "js/datatables/json/scroller-demo.json",
                    deferRender: true,
                    scrollY: 380,
                    scrollCollapse: true,
                    scroller: true
                });

                $('#datatable-fixed-header').DataTable({
                    fixedHeader: true
                });

                var $datatable = $('#datatable-checkbox');

                $datatable.dataTable({
                    'order': [[1, 'asc']],
                    'columnDefs': [
                        {orderable: false, targets: [0]}
                    ]
                });
                $datatable.on('draw.dt', function () {
                    $('input').iCheck({
                        checkboxClass: 'icheckbox_flat-green'
                    });
                });

                TableManageButtons.init();
            });
        </script>
        <!-- /Datatables -->

        <!-- Custom Notification -->
        <script>
            $(document).ready(function () {
                var cnt = 10;

                TabbedNotification = function (options) {
                    var message = "<div id='ntf" + cnt + "' class='text alert-" + options.type + "' style='display:none'><h2><i class='fa fa-bell'></i> " + options.title +
                            "</h2><div class='close'><a href='javascript:;' class='notification_close'><i class='fa fa-close'></i></a></div><p>" + options.text + "</p></div>";

                    if (!document.getElementById('custom_notifications')) {
                        alert('doesnt exists');
                    } else {
                        $('#custom_notifications ul.notifications').append("<li><a id='ntlink" + cnt + "' class='alert-" + options.type + "' href='#ntf" + cnt + "'><i class='fa fa-bell animated shake'></i></a></li>");
                        $('#custom_notifications #notif-group').append(message);
                        cnt++;
                        CustomTabs(options);
                    }
                };

                CustomTabs = function (options) {
                    $('.tabbed_notifications > div').hide();
                    $('.tabbed_notifications > div:first-of-type').show();
                    $('#custom_notifications').removeClass('dsp_none');
                    $('.notifications a').click(function (e) {
                        e.preventDefault();
                        var $this = $(this),
                                tabbed_notifications = '#' + $this.parents('.notifications').data('tabbed_notifications'),
                                others = $this.closest('li').siblings().children('a'),
                                target = $this.attr('href');
                        others.removeClass('active');
                        $this.addClass('active');
                        $(tabbed_notifications).children('div').hide();
                        $(target).show();
                    });
                };

                CustomTabs();

                var tabid = idname = '';

                $(document).on('click', '.notification_close', function (e) {
                    idname = $(this).parent().parent().attr("id");
                    tabid = idname.substr(-2);
                    $('#ntf' + tabid).remove();
                    $('#ntlink' + tabid).parent().remove();
                    $('.notifications a').first().addClass('active');
                    $('#notif-group div').first().css('display', 'block');
                });
            });
        </script>
        <!-- /Custom Notification -->

        <!-- Ultima Notificacion Display-->
        <script>
            function ExecuteAction() {
                var submitBtn = document.getElementById('lanzador');
                if (submitBtn) {
                    submitBtn.click();
                }
            }
            var mensajeTitulo = document.getElementById('titulomensaje').value;
            if (mensajeTitulo !== "" && mensajeTitulo !== null && mensajeTitulo !== "*" && mensajeTitulo !== " ") {
                ExecuteAction();
            }
        </script>
        <!-- /Ultima Notificacion Display-->

        <!-- Buscado Automatico -->
        <script>
            function ExecuteBuscado() {
                var submitBtn = document.getElementById('search');
                var numerodocumento = document.getElementById('txtnumerodocumento').value;
                var fechanacimiento = document.getElementById('cafechanacimiento').value;
                if (submitBtn) {
                    if (numerodocumento !== "" && numerodocumento !== null && numerodocumento !== "*") {
                        if (fechanacimiento === "" || fechanacimiento === null || fechanacimiento === "*") {
                            submitBtn.click();
                        }
                    }
                }
            }
        </script>
        <!-- /Buscado Automatico-->

        <!-- Buscar Con Enter-->
        <script>
            function BuscarEnter(e) {
                e = e || window.event;
                if (e.keyCode === 13) {
                    ExecuteBuscado();
                    return false;
                }
                return true;
            }
        </script>
        <!-- /Buscar Con Enter-->
    </body>
</html>