
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de prueba</title>
    </head>
    <body>
        <h1>Datos del cliente</h1>
        <!-- Pasaje de datos mediante POST (PD)
             Paso 1 & 2-->
        <form action="SvPrueba" method="POST">  
            <p><label>Dni: </label> <input type="text" name="dni"></p>
            <p><label>Nombre: </label> <input type="text" name="nombre"></p>
            <p><label>Apellido: </label> <input type="text" name="apellido"></p>
            <p><label>Teléfono: </label> <input type="text" name="telefono"></p>
            <button type="submit" >Enviar</button>
        </form>
        
        <!--Recuperar datos desde un Servlet a un JSP mediante GET (RD) 
            Paso 1 -->
        
        <h1>Ver lista de clientes</h1>
        <p>Si desea ver todos los clientes haga click en el botón mostrar clientes</p>
        <form action="SvPrueba" method="GET">
            <button type="submit">Mostrar clientes</button>
        </form>
    </body>
</html>
