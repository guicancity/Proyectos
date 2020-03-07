/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet(name = "Sesion", urlPatterns = {"/GeneraInformes"})
public class Sesion extends HttpServlet {

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
      response.setContentType("text/html;charset=UTF-8");
      try (PrintWriter out = response.getWriter()) {
    
        
         String email = request.getParameter("email");
            String cla = request.getParameter("password");

            HttpSession sesion = request.getSession();
            ArrayList error = new ArrayList(); //coje el error de usu o cla y lo muestra
            sesion.setAttribute("error", error);

            sesion.setAttribute("nom", email);//1 lineas muestra el usuario durante la visita a la página
            
            sesion.setAttribute("photo", email); // 1 Este muestra la foto
            
            //UsuariosDTO nuevo = new UsuariosDTO();
         
            
            
            //UsuariosDAO pd = new UsuariosDAO();
            //ArrayList<UsuariosDTO> lista = new ArrayList();//esto se hace para llamar las variables, para cargarlas en un ArrayList porque están guardadas ahí.
           // lista = pd.login(email, cla); //llamo el metodo que tiene la conexión con la DB.
            //luego creo el for mejorado
            String user = null;
            String clave = null;
             // for (UsuariosDTO varia : lista) {//esto es un arreglo del for, se llama e metodo DTO y el ArrayList con las variables

               // user = varia.getCorreoElectronico();
               // clave = varia.getContrasena();
                  //   }//El for mejorado se cierra acá, si se cierra después del else no devuelve al login cuando CLAVE INCORRECTA
                if (email.equals(user) && cla.equals(clave)){
                   
                    RequestDispatcher rd = request.getRequestDispatcher("Inicio.jsp");
                    rd.forward(request, response);
                }else{
                    
                    error.add("correo o clave incorrecta");
                    RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                    rd.forward(request, response);
                }
         
      }
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
