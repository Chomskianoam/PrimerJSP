<%-- 
    Document   : MostrarJSP
    Created on : 29 jul. 2022, 01:14:09
    Author     : Gfast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Servlets.Cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <h1>Lista de Clientes</h1>
    <%--Utilizamos código Java para traer y recorrer la lista --%>
    <%
      List<Cliente> listaClientes = (List) request.getSession().getAttribute("listaClientes");
      int cont=1;
      for (Cliente cli : listaClientes) { %>
        <p><b>Cliente N°<%=cont%></b></p>
        <p>Dni: <%=cli.getDni()%></p>
        <p>Nombre: <%=cli.getNombre()%></p>
        <p>Apellido: <%=cli.getApellido()%></p>
        <p>Teléfono: <%=cli.getTelefono()%></p>
    <%-- Incremento mi contador,
    para mostrar correctamente cada num de cliente --%>
        <% cont= cont+1;%>
        <%}
    %>
    
    </body>
</html>
