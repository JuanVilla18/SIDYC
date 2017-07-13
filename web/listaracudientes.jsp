<%--   
    Document   : listaracudientes
    Created on : 23/10/2016, 05:25:01 PM
    Author     : Juan
--%>

<%@page import="java.util.*" session="true"%>
<%@page import="Utilidades.Resolve"%>
<%@page import="Negocio.NegUsers"%>
<%@page import="Entidades.Persona"%>
<%@page import="java.util.ArrayList"%>

<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<t:if test="${sessionScope['sessionUserPerfil'] == null}">
    <%
        response.sendRedirect("./Home");
    %>
</t:if>

<%
    ArrayList<Persona> LP = new ArrayList<>();
    NegUsers NP = new NegUsers();
    LP = NP.getListaFiltro("P7", "perfil", "P7");
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
        <title>Listar Acudientes - I.E. La Independencia</title>

        <!-- Bootstrap -->
        <link href="scripts/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="scripts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
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
                                    <h3>Gestion de Usuarios</h3>
                                </div>
                            <jsp:include page="search.jsp"></jsp:include>
                            </div>
                            <div class="row">
                                <!-- Tabla Inicio--> 
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Ver Usuarios <small>Todos</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <table id="datatable-fixed-header" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Numero Documento</th>
                                                    <th>Nombre Completo</th>
                                                    <th>Tipo Documento</th>
                                                    <th>Perfil</th>
                                                    <th>Estado</th>
                                                    <th>Correo</th>
                                                    <th>Genero</th>
                                                    <th>Dirección</th>
                                                    <th>Fecha Nacimiento</th>
                                                    <th>Barrio</th>
                                                    <th>Numero Contacto</th>
                                                    <th>Fecha Registro</th>
                                                </tr>
                                            </thead>
                                                <%if(LP != null){%>
                                                <%for(Persona persona : LP){%>
                                                <tr>
                                                    <td><%= persona.getNumero_documento_persona() != null ? persona.getNumero_documento_persona() : "" %></td>
                                                    <td><%= (persona.getNombres() + " " + persona.getApellido_1() + " " + (persona.getApellido_2() != null ? persona.getApellido_2() : "")) != null ? (persona.getNombres() + " " + persona.getApellido_1() + " " + (persona.getApellido_2() != null ? persona.getApellido_2() : "")) : "" %></td>
                                                    <td><%= Resolve.resolveSiglaTipoDocumento("T", persona.getTipo_documento()) != null ? Resolve.resolveSiglaTipoDocumento("T", persona.getTipo_documento()) : "" %></td>
                                                    <td><%= Resolve.ResolveSiglaPerfil("P", persona.getPerfil(), persona.getGenero()) != null ? Resolve.ResolveSiglaPerfil("P", persona.getPerfil(), persona.getGenero()) : "" %></td>
                                                    <td><%= Resolve.ResolveEstado("E", persona.getEstado()) != null ? Resolve.ResolveEstado("E", persona.getEstado()) : "" %></td>
                                                    <td><%= persona.getCorreo() != null ? persona.getCorreo() : "" %></td>
                                                    <td><%= Resolve.ResolveGenero("G", persona.getGenero()) != null ? Resolve.ResolveGenero("G", persona.getGenero()) : "" %></td>
                                                    <td><%= persona.getDireccion() != null ? persona.getDireccion() : "" %></td>
                                                    <td><%= persona.getFecha_nacimiento() != null ? persona.getFecha_nacimiento() : "" %></td>
                                                    <td><%= persona.getBarrio() != null ? persona.getBarrio() : "" %></td>
                                                    <td><%= persona.getNumero_contacto() != null ? persona.getNumero_contacto() : "" %></td>
                                                    <td><%= persona.getFecha_registro() != null ? persona.getFecha_registro() : "" %></td>
                                                </tr>
                                                <%}%>
                                                <%}%>
                                            <tbody>
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Tabla Fin -->
                            </div>
                <jsp:include page="footer.jsp"></jsp:include>
            </div>
        </div>

        <!-- jQuery -->
        <script src="scripts/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="scripts/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- bootstrap-daterangepicker -->
        <!-- FastClick -->
        <script src="scripts/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="scripts/nprogress/nprogress.js"></script>
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
        
        <!-- Datatables -->
    <script>
      $(document).ready(function() {
        var handleDataTableButtons = function() {
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

        TableManageButtons = function() {
          "use strict";
          return {
            init: function() {
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
          'order': [[ 1, 'asc' ]],
          'columnDefs': [
            { orderable: false, targets: [0] }
          ]
        });
        $datatable.on('draw.dt', function() {
          $('input').iCheck({
            checkboxClass: 'icheckbox_flat-green'
          });
        });

        TableManageButtons.init();
      });
    </script>
    <!-- /Datatables -->
        
    </body>
</html>