<%@page import="java.awt.Image"%>
<%@page import="java.util.*" session="true" %>
<%
    HttpSession sesion = request.getSession();
    String nombres = (String) sesion.getAttribute("sessionUserNombres");
    String mensaje = (String) sesion.getAttribute("mensaje");
%>
<!-- menu profile quick info -->
<div class="profile">
    <div class="profile_pic">
        <a href="./Perfil"><img src="imagenes/user.png" alt="..." class="img-circle profile_img"></a>
    </div>
    <div class="profile_info">
        <span><%=mensaje%></span>
        <h2><%=nombres%></h2>
    </div>
</div>
<!-- /menu profile quick info -->