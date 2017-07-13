<%-- 
    Document   : salir
    Created on : 23/10/2016, 09:37:05 AM
    Author     : Juan
--%>
<%@page import="java.util.*" session="true"%>

<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<t:if test="${sessionScope['sessionUserPerfil'] == null}">
    <%
        response.sendRedirect("./Home");
    %>
</t:if>

<%
    response.sendRedirect("./Salir");
%>