package Servlets;

import java.util.ArrayList;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import javax.servlet.http.HttpSession;


@WebServlet(name = "SvPrueba", urlPatterns = {"/SvPrueba"})
public class SvPrueba extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Acá había un apartado para transformar el servlet en JPS, para este ejemplo no es necesario.
    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
      
      //RD: paso 2
      //Simulamos una lista de clientes. Esto ya podría venir desde una base de datos
      List<Cliente> listaClientes = new ArrayList<> ();
      listaClientes.add(new Cliente("12345678", "Luisina", "de Paula", "444222357"));
      listaClientes.add(new Cliente("98765432", "Avril", "Lavigne", "777123575"));
      listaClientes.add(new Cliente("34578961", "Gianluigi", "Guidicci", "987441220"));
      
      //Seteamos la lista de clientes como un parámetro para poder utilizar en cualquier JSP
      //Para ello traemos la sesión de la request
      HttpSession misession = request.getSession();
      misession.setAttribute("listaClientes", listaClientes);
      
      //redireccionamos a otro JSP
      response.sendRedirect("MostrarJSP.jsp");
      
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        //PD: paso 3
        //Traemos los datos enviados en la request, los guardamos en variables auxiliares.
        //El  nombre en getParameter debe ser el mismo que en el input del form. 
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
