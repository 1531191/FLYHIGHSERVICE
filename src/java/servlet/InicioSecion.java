/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Vuelos;

/**
 *
 * @author LAB-USR-AQ265-A0806
 */
public class InicioSecion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String metodo = request.getParameter("metodo");
           
         
            if(metodo.equals("login")){
                login(request, response);
            }else if(metodo.equals("reservas")){
                Reservas(request, response);
            }
           
        
      
     
            
         
    }
    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
          response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       String usuario = request.getParameter("usuario");
       String password = request.getParameter("password");
        HttpSession sesion = request.getSession(true);
        
        Consultas co= new Consultas();
        if(co.autenticacion(usuario, password)){
              sesion.setAttribute("usuario",usuario);
              System.out.println("qdasda"+usuario);
            response.sendRedirect("Vuelos.jsp");
        }else {
           response.sendRedirect("login.jsp"); 
        }
        
    }
     private void Reservas(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      HttpSession sesion = request.getSession(true);
        
         PrintWriter out = response.getWriter();
        String usuario= (String) sesion.getAttribute("usuario");
        System.out.println("controlador.usuario.Reservas()"+ usuario);
      
                
            Consultas m = new Consultas();
            
                 List<Vuelos> data = m.VerReserva(usuario);
                
           request.setAttribute("datareserva",data);
            System.out.println(""+data.toString());

            //Se reenvia el request(con los datos) al jsp listaAlumno.jsp
            request.getRequestDispatcher("/Vuelos.jsp").forward(request, response); 
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
